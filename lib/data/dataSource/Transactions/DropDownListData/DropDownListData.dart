import 'package:airtop/AllImports.dart';

class DropDownListData {
  List<TransactionDropDownListModel> transactionItemDropdownDataList(
      BuildContext context) {
    List<TransactionDropDownListModel> transactionItemDropdownDataList = [
      TransactionDropDownListModel(
          transactionDropDownItemTitle: 'transactionDropDownItemTitle',
          transactionDropDownCallBackFuction: () {}),
      TransactionDropDownListModel(
          transactionDropDownItemTitle: 'transactionDropDownItemTitle',
          transactionDropDownCallBackFuction: () {}),
      TransactionDropDownListModel(
          transactionDropDownItemTitle: 'transactionDropDownItemTitle',
          transactionDropDownCallBackFuction: () {}),
    ];

    return transactionItemDropdownDataList;
  }
}
