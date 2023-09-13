import 'dart:ffi';

import 'package:flutter/material.dart';

class transactionsDetails {
  String transactionDetailTitle;
  String transactionSummitButtonTitle;
  List<transactionDetailItem> transactionDetailItemList;
  transactionsDetails(
      {required this.transactionDetailItemList,
      required this.transactionDetailTitle,
      required this.transactionSummitButtonTitle});
}

class transactionDetailItem {
  String transactionDetailItemTitle;
  Bool transactionDetailItemRequired;
  Icon transactionDetailItemIcon;
  Int? transactionDetailItemNumber;
  Double? transactionDetailItemAmount;
  transactionDetailItem(
      {this.transactionDetailItemAmount,
      required this.transactionDetailItemIcon,
      this.transactionDetailItemNumber,
      required this.transactionDetailItemRequired,
      required this.transactionDetailItemTitle});
}
