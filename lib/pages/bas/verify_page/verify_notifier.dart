import 'package:flutter/cupertino.dart';
import 'package:flutter_language_app/app/app.router.dart';
import 'package:flutter_language_app/app/locator.dart';
import 'package:flutter_language_app/pages/bas/verify_page/verify_page.dart';
import 'package:flutter_language_app/services/preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyVM extends BaseViewModel{
  BuildContext context;
VerifyVM(this.context);
  final AppPreferences pref = locator<AppPreferences>();
  final NavigationService navigationService = locator<NavigationService>();

  // final BottomSheetService bottomSheetService = locator<BottomSheetService>();

  Future getDataFromServer() async {
    await Future.delayed(Duration(seconds: 3));
    initUser();
  }

  void initUser() {
    pref.isFirstTimeLaunch = false;
    createUserSheet(context);
  }

}