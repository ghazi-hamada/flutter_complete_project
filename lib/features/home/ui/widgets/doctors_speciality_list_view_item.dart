import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
const DoctorsSpecialityListViewItem({ Key? key, required this.itemIndex, required this.specializationsData }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
            padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color(0xFFF4F8FF), //#F4F8FF
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Text(
                specializationsData?.name ??  'ghazi',
                  style: TextStyles.font12DarkBlueRegular,
                ),
              ],
            ),
          );
  }
}