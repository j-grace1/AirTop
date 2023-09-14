import 'package:airtop/AllImports.dart';

class MoneyTransferTab extends StatefulWidget {
  const MoneyTransferTab({Key? key}) : super(key: key);

  @override
  State<MoneyTransferTab> createState() => _MoneyTransferTabState();
}

class _MoneyTransferTabState extends State<MoneyTransferTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: MoneyTransferDetailItem()),
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
              S.of(context).transactionPageButtonTextTransfer,
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

class MoneyTransferDetailItem extends StatefulWidget {
  MoneyTransferDetailItem({Key? key}) : super(key: key);

  @override
  State<MoneyTransferDetailItem> createState() =>
      _MoneyTransferDetailItemState();
}

class _MoneyTransferDetailItemState extends State<MoneyTransferDetailItem> {
  @override
  Widget build(BuildContext context) {
    List<TransactionsDetails> moneyTransferItemDataList =
        TransfersTabData.returnTransfersList(context);

    var items = [10, 20, 30, 40, 50, 100];
    var dropdownvalue = 10;

    return ListView.builder(
      itemCount: moneyTransferItemDataList.length,
      itemBuilder: (context, index) {
        TransactionsDetails item = moneyTransferItemDataList[index];
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
                      flex: 2,
                      child: DropdownButton<int>(
                        // Initial Value

                        // Down Arrow Icon
                        icon: const Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          size: 30,
                        ),

                        // Array list of items
                        items: items.map((int items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Center(
                                child: Container(
                                    width: 20, child: Text(items.toString()))),
                          );
                        }).toList(),

                        onChanged: (int? newValue) {
                          setState(() {});
                        },
                      ),
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
