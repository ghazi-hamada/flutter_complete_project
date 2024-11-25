import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final int selectedIndex;
  final SpecializationsData? specializationsData;
  const SpecialityListViewItem(
      {super.key, required this.itemIndex, required this.specializationsData, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          Container(
            decoration: itemIndex == selectedIndex
                ? BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.darkBlue,
                  ),
                  shape: BoxShape.circle,
                  )
                : null,
            child: CircleAvatar(
              radius: 28.0,
              backgroundColor: Color(0xFFF4F8FF), //#F4F8FF
              child: SvgPicture.asset(
                'assets/svgs/general_speciality.svg',
                height: itemIndex == selectedIndex ? 42.h : 40.h,
                width: itemIndex == selectedIndex ? 42.w : 40.w,
              ),
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'General Speciality',
            style: itemIndex == selectedIndex ? TextStyles.font14DarkBlueBold : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
