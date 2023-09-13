import 'package:airtop/AllImports.dart';
import 'package:airtop/App%20Files/UI/Pages/Home/HomePage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AirTopAppBar(),
      body: Container(
        child: TransactionsPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: GeneralAppColors.blueSpecial,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
