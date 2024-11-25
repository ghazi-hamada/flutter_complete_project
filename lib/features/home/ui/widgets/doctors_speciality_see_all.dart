import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality',
        style: TextStyles.font18DarkblueBold,
        ),
        Spacer(),
        Text('See All',
        style: TextStyles.font13BlueSemiBold,
        ),

      ],
    );
  }
}
// ghazihamada7@gmail.com