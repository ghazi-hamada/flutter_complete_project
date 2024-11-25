import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_list/doctors_blocBuilder.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/specializations_blocBuilder.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_speciality_see_all.dart';
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
          verticalSpace(24),
          DoctorSpecialitySeeAll(),
          verticalSpace(18),
          SpecializationsBlocBuilder(),
          verticalSpace(8),
          DoctorsBlocBuilder(),
        ],
      ),
    )));
  }
}
