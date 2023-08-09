import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAnimation extends StatefulWidget {
  final String svgPath;

  const SvgAnimation({required this.svgPath});

  @override
  _SvgAnimationState createState() => _SvgAnimationState();
}

class _SvgAnimationState extends State<SvgAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 0.45, end: 0.7).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return FractionallySizedBox(
          widthFactor: _animation.value,
          heightFactor: _animation.value,
          child: AspectRatio(
            aspectRatio: 1.0,
            child: SvgPicture.asset(
              widget.svgPath,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
