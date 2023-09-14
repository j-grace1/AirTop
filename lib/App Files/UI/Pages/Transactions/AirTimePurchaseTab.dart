import 'package:airtop/AllImports.dart';

class AirTimePurchaseTab extends StatefulWidget {
  const AirTimePurchaseTab({Key? key}) : super(key: key);

  @override
  State<AirTimePurchaseTab> createState() => _AirTimePurchaseTabState();
}

class _AirTimePurchaseTabState extends State<AirTimePurchaseTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: AirTimePurchaseDetailItem()),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            // Add your button's onPressed logic here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: GeneralAppColors.blueSpecial.withOpacity(0.88),
            foregroundColor: Colors.white, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadii.borderRadius12All,
            ),
            elevation: 5, // Shadow elevation
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Text(
              S.of(context).transactionPageButtonTextAirtime,
              style: TextStyle(
                fontSize: Fonts.sectionHeaderFontSize18,
                fontFamily: Fonts.pageHeaderFontFamily,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class AirTimePurchaseDetailItem extends StatefulWidget {
  AirTimePurchaseDetailItem({Key? key}) : super(key: key);

  @override
  State<AirTimePurchaseDetailItem> createState() =>
      _AirTimePurchaseDetailItemState();
}

class _AirTimePurchaseDetailItemState extends State<AirTimePurchaseDetailItem> {
  @override
  Widget build(BuildContext context) {
    List<TransactionsDetails> airtimePurchaseItemDataList =
        AirTimeTabData.returnAirtimeItemDataList(context);

    return ListView.builder(
      itemCount: airtimePurchaseItemDataList.length,
      itemBuilder: (context, index) {
        TransactionsDetails item = airtimePurchaseItemDataList[index];
        return Column(
          children: [
            Container(
              width: ScreenDimensionsUtil.screenWidth(context) * 0.84,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item.transactionDetailTitle,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: Fonts.sectionHeaderFontSize18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: ScreenDimensionsUtil.screenWidth(context) * 0.84,
              decoration: BoxDecoration(
                borderRadius: BorderRadii.borderRadius30All,
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
              height: 60,
              // Customize the content of the container based on your model
              child: Container(
                padding: EdgeInsets.fromLTRB(29, 10, 5, 10),
                child: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20, decoration: TextDecoration.none),
                          cursorColor: GeneralAppColors.black,
                          cursorHeight: 20,
                          cursorWidth: 1.5,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                            hintStyle: const TextStyle(
                                color: GeneralAppColors.grey,
                                fontSize: 18 // Change the hint text color here
                                ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 15, 15, 15),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            size: 30,
                          )),
                    ),
                    Expanded(
                        flex: 2,
                        child: Image.asset(item.transactionDetailImageUrl!))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        );
      },
    );
  }
}
