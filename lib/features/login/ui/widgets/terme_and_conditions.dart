import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class TermeAndConditions extends StatelessWidget {
  const TermeAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'By logging, you agree to our ',
          style: TextStyles.font13GreyRegular,
        ),
        TextSpan(
            text: 'Terms & Conditions', style: TextStyles.font13DarkBlueMedium),
        TextSpan(
            text: ' and ',
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5)),
        TextSpan(
            text: 'Privacy Policy', style: TextStyles.font13DarkBlueMedium),
      ]),
    );
  }
}
