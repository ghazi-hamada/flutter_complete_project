import 'package:flutter/material.dart';
import '../../../core/theming/styles.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_test.dart';
import 'widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndTest(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GreyRegular,
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
