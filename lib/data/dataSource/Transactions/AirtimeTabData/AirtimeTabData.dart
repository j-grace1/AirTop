import 'package:airtop/AllImports.dart';

class AirTimeTabData {
  static List<TransactionsDetails> returnAirtimeItemDataList(
      BuildContext context) {
    List<TransactionsDetails> airtimePurchaseItemDataList = [
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextSMSNumber,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: false,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle:
            S.of(context).transactionPageTextRecieverAccontNumber,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: false,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextAmount,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: false,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextPayer,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: false,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
    ];
    return airtimePurchaseItemDataList;
  }
}
