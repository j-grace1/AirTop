import 'package:airtop/AllImports.dart';

class sideMenuModel {
  String userProfileUrl;
  String userName;
  List<sideMenuItemModel> sideMenuItemList;

  sideMenuModel(
      {required this.userName,
      required this.userProfileUrl,
      required this.sideMenuItemList});
}

class sideMenuItemModel {
  String itemTitle;
  Function callbackFuction;

  sideMenuItemModel({required this.itemTitle, required this.callbackFuction});
}
