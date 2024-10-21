import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndTest extends StatelessWidget {
  const DoctorImageAndTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14, 0.4],
          )),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        // text
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32blueBold.copyWith(
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
