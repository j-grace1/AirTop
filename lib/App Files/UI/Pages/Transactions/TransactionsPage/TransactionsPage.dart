import 'package:airtop/AllImports.dart';

import '../AirTimePurchaseTab.dart';
import '../MoneyTransferTab.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Column(
            children: [
              SizedBox(
                height: ScreenDimensionsUtil.screenHeight(context) * 0.01,
              ),
              OnlineandOfflineButtons(),
              Expanded(child: TransactionDetailTabBar())
            ],
          ),
        ),
      ),
    );
  }
}

class OnlineandOfflineButtons extends StatefulWidget {
  const OnlineandOfflineButtons({Key? key}) : super(key: key);

  @override
  State<OnlineandOfflineButtons> createState() =>
      _OnlineandOfflineButtonsState();
}

class _OnlineandOfflineButtonsState extends State<OnlineandOfflineButtons> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false; // Variable to store the state of the switch

    void toggleSwitch(bool value) {
      setState(() {
        isSwitched = !value;
      });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          width: ScreenDimensionsUtil.screenWidth(context) * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: ScreenDimensionsUtil.screenWidth(context) * 0.19,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    S.of(context).statusOnline,
                    style: TextStyle(
                      fontSize: Fonts.sectionHeaderFontSize18,
                      fontFamily: Fonts.pageHeaderFontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Switch(
                value: isSwitched,
                activeColor: GeneralAppColors.blueSpecial,
                inactiveThumbColor: GeneralAppColors.grey,
                inactiveTrackColor: GeneralAppColors.grey.withOpacity(0.5),
                onChanged: toggleSwitch,
                splashRadius: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: ScreenDimensionsUtil.screenWidth(context) * 0.19,
                child: Text(
                  S.of(context).statusOffline,
                  style: TextStyle(
                    fontSize: Fonts.sectionHeaderFontSize18,
                    fontFamily: Fonts.pageHeaderFontFamily,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TransactionDetailTabBar extends StatelessWidget {
  const TransactionDetailTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadii.borderRadius20All,
          color: GeneralAppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 5), // Offset in the vertical direction
            ),
          ],
        ),
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Airtime Purchase',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Money Transfer',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: AirTimePurchaseTab(),
                  ),
                  Container(
                    child: MoneyTransferTab(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
