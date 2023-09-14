import 'dart:ffi';

import 'package:flutter/material.dart';

class TransactionsDetails {
  String transactionDetailTitle;
  bool transactionDetailItemRequired;
  String? transactionDetailImageUrl;
  Icon? transactionDetailItemIcon;
  Int? transactionDetailItemNumber;
  Double? transactionDetailItemAmount;

  List<TransactionDropDownListModel> transactionDropDownList;
  List<TransactionCurrencyListModel>? transactionCurrencyList;
  TransactionsDetails({
    this.transactionCurrencyList,
    required this.transactionDetailTitle,
    required this.transactionDropDownList,
    required this.transactionDetailItemRequired,
    this.transactionDetailItemIcon,
    this.transactionDetailImageUrl,
    this.transactionDetailItemAmount,
    this.transactionDetailItemNumber,
  });
}

class TransactionDropDownListModel {
  String transactionDropDownItemTitle;
  Function transactionDropDownCallBackFuction;

  TransactionDropDownListModel({
    required this.transactionDropDownItemTitle,
    required this.transactionDropDownCallBackFuction,
  });
}

class TransactionCurrencyListModel {
  String transactionCurrencyTitle;
  Function transactionCurrencyCallBackFuction;

  TransactionCurrencyListModel({
    required this.transactionCurrencyTitle,
    required this.transactionCurrencyCallBackFuction,
  });
}
