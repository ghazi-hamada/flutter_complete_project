import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/app_routes.dart';
import 'package:flutter_complete_project/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setUpGetIt();
  //To fix texts being hidden bug in flutter_screenutil in release mode.

  await ScreenUtil.ensureScreenSize();
  return runApp(DocApp(appRoutes: AppRoutes()));
}
