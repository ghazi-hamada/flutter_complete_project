import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/font_weight_helpers.dart';
import 'package:flutter_complete_project/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelpers.bold,
    color: Colors.black,
  );
  static TextStyle font32blueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelpers.bold,
    color: Colors.blue,
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelpers.regular,
    color: Colors.grey,
  );
  static TextStyle font16whiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelpers.semiBold,
    color: Colors.white,
  );

  static TextStyle font24blueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelpers.bold,
    color: ColorsManager.mainblue,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelpers.regular,
    color: ColorsManager.gray,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelpers.regular,
    color: ColorsManager.lightGray,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelpers.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelpers.regular,
    color: ColorsManager.mainblue,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelpers.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelpers.semiBold,
    color: ColorsManager.mainblue,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelpers.medium,
    color: ColorsManager.darkBlue,
  );

  
}
