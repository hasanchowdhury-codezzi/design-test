import 'package:design_test/screens/login/components/custom_text_field.dart';
import 'package:design_test/utils/constants.dart';
import 'package:design_test/screens/home/home_screen.dart';
import 'package:design_test/common/customElevatedButton.dart';
import 'package:design_test/common/custom_scaffold.dart';
import 'package:design_test/common/custom_social_button.dart';
import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions(context).scaleWidth(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dimensions(context).scaleHeight(60).toHeight,
              SvgPicture.asset(AppImages.logo),
              SizedBox(height: Dimensions(context).scaleHeight(25)),
              Row(
                children: [
                  Text(
                    'Get Started Now',
                    style: TextStyle(fontSize: Dimensions(context).mFontSize32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: Dimensions(context).scaleHeight(8)),
                  SvgPicture.asset(
                    AppImages.hand,
                  ),
                ],
              ),
              Dimensions(context).scaleHeight(12).toHeight,
              Text(
                'Enter Your credentials to access your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Dimensions(context).mFontSize14,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              SizedBox(height: Dimensions(context).scaleHeight(16)),
              Row(
                children: [
                  Expanded(
                    child: CustomSocialButton(
                      text: 'Log in with Google',
                      onPressed: () {},
                      imgUrl: AppImages.google,
                    ),
                  ),
                  Dimensions(context).scaleWidth(12).toWidth,
                  Expanded(
                    child: CustomSocialButton(
                      text: 'Log in with Apple',
                      onPressed: () {},
                      imgUrl: AppImages.apple,
                    ),
                  ),
                ],
              ),
              Dimensions(context).scaleHeight(24).toHeight,
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.white.withOpacity(0.1)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions(context).scaleWidth(16)),
                    child: const Text(
                      'Or',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.white.withOpacity(0.1)),
                  ),
                ],
              ),
              Dimensions(context).scaleHeight(24).toHeight,
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: Dimensions(context).mFontSize12),
                    ),
                    Dimensions(context).scaleHeight(12).toHeight,
                    CustomTextFormField(
                      hintText: 'Email',
                      imgUrl: AppImages.email,
                      fieldValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                    ),
                    Dimensions(context).scaleHeight(12).toHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(fontSize: Dimensions(context).mFontSize12),
                        ),
                        Text(
                          'Forget Password',
                          style: TextStyle(fontSize: Dimensions(context).mFontSize12),
                        ),
                      ],
                    ),
                    Dimensions(context).scaleHeight(12).toHeight,
                    CustomTextFormField(
                      hintText: 'password',
                      imgUrl: AppImages.lock,
                      suffixIcon: SvgPicture.asset(
                        AppImages.eye,
                        width: Dimensions(context).scaleWidth(16),
                      ),
                      // obscureText: true,
                      fieldValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                    Dimensions(context).scaleHeight(24).toHeight,
                    GradientButton(
                      text: 'Log in',
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                        }
                      },
                    ),
                  ],
                ),
              ),
              Dimensions(context).scaleHeight(32).toHeight,
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have account?', // Default style for this part
                    style: TextStyle(
                      fontSize: Dimensions(context).mFontSize14,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: Dimensions(context).mFontSize14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
