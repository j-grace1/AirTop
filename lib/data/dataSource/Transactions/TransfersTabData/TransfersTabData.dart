import 'package:airtop/AllImports.dart';

class TransfersTabData {
  static List<TransactionsDetails> returnTransfersList(BuildContext context) {
    List<TransactionsDetails> transfersItemDetailsDataList = [
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextSenderNumber,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: true,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle:
            S.of(context).transactionPageTextRecieverAccontNumber,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: true,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextAmount,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: true,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
      TransactionsDetails(
        transactionDetailTitle: S.of(context).transactionPageTextPayer,
        transactionDropDownList:
            DropDownListData().transactionItemDropdownDataList(context),
        transactionDetailItemRequired: true,
        transactionDetailImageUrl: Assets.pngMtnLogoPng,
      ),
    ];
    return transfersItemDetailsDataList;
  }
}
