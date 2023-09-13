import 'package:airtop/AllImports.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  final Duration _animationDuration = Duration(seconds: 4);
  final Duration _animationInterval = Duration(seconds: 1);
  bool _isAnimating = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );
    _animation = Tween<double>(begin: 0.4, end: 0.55).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    Timer.periodic(_animationInterval, (timer) {
      if (!_isAnimating) {
        timer.cancel();
      }
      _animationController.forward().then((_) {
        _animationController.reverse();
      });
    });

    Timer(_animationDuration, () {
      setState(() {
        _isAnimating = false;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralAppColors.blueSpecial,
      body: Container(
        child: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return FractionallySizedBox(
                widthFactor: _animation.value,
                heightFactor: _animation.value,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: SvgPicture.asset(
                    Assets.svgAirtopandTransferBetterVersion,
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
