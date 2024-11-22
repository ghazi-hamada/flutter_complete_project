import 'package:flutter/material.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/doctor_speciality_see_all.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_and_doctors_blocBuilder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
        20.0,
        16.0,
        20.0,
        28.0,
      ),
      child: Column(
        children: [
          HomeTopBar(),
          DoctorsBlueContainer(),
          verticalSpace(24.h),
          DoctorSpecialitySeeAll(),
          verticalSpace(18.h),
          SpecializationsAndDoctorsBlocBuilder(),
        ],
      ),
    )));
  }
}
