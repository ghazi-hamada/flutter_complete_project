import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class AlreadyHaveAccuntText extends StatelessWidget {
const AlreadyHaveAccuntText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account? ',
          style: TextStyles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyles.font13BlueSemiBold,
        ),
      ]),
    );
  }
}