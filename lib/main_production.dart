import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/extensions.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_routes.dart';
import 'doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setUpGetIt();
  //To fix texts being hidden bug in flutter_screenutil in release mode.

  await ScreenUtil.ensureScreenSize();
    await checkIfLoggedInUser();

  return runApp(DocApp(appRoutes: AppRoutes()));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
