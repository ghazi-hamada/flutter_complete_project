import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widget/app_text_button.dart';
import 'package:flutter_complete_project/core/widget/app_text_form_field.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/already_have_accunt_text.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/terme_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30.h),
                Text(
                  'Welcome Back!',
                  style: TextStyles.font24blueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(
                          hintText: 'Email',
                        ),
                        verticalSpace(18.h),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            icon: Icon(
                              isObscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyles.font13BlueRegular,
                          ),
                        ),
                        verticalSpace(40),
                        AppTextButton(
                          buttonText: "Login",
                          textStyle: TextStyles.font16whiteSemiBold,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              print("Login");
                            }
                          },
                        ),
                        verticalSpace(40),
                        const TermeAndConditions(),
                        verticalSpace(60),
                        const AlreadyHaveAccuntText()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
