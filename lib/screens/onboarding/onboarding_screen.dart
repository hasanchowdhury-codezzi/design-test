import 'dart:ui';
import 'package:design_test/screens/login/login_screen.dart';
import 'package:design_test/common/customElevatedButton.dart';
import 'package:design_test/common/custom_scaffold.dart';
import 'package:design_test/utils/constants.dart';
import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF003044).withOpacity(0.9),
                  const Color(0xFF0A1A32).withOpacity(0.4),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(Dimensions(context).scaleHeight(30)),
            ),
            padding: EdgeInsets.symmetric(vertical: Dimensions(context).scaleHeight(6), horizontal: Dimensions(context).scaleWidth(24)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.auto_awesome_outlined,
                  color: const Color(0xFF00E3F5),
                  size: Dimensions(context).scaleHeight(24),
                ),
                Dimensions(context).scaleWidth(10).toWidth,
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xFF00E3F5), Color(0xFF0058F5)], // Gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text(
                    'Welcome to PhotoAI',
                    style: TextStyle(
                      fontSize: Dimensions(context).mFontSize14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Base color required for ShaderMask
                    ),
                  ),
                ),
              ],
            ),
          ),
          Dimensions(context).scaleWidth(32).toHeight,
          SizedBox(
            height: Dimensions(context).scaleHeight(480),
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  left: Dimensions(context).scaleWidth(-100),
                  top: 0,
                  child: Image.asset(
                    AppImages.onboardingImageLeft,
                    height: Dimensions(context).scaleHeight(250),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: Dimensions(context).scaleWidth(-80),
                  child: Image.asset(
                    AppImages.onboardingImageRight,
                    height: Dimensions(context).scaleHeight(250),
                  ),
                ),
                Positioned.fill(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: SvgPicture.asset(
                      AppImages.backgroundCurveImage,
                    ),
                  ),
                ),
                Positioned(
                  top: Dimensions(context).scaleHeight(50),
                  left: Dimensions(context).scaleWidth(80),
                  child: Image.asset(
                    AppImages.onboardingImageCenter,
                    width: Dimensions(context).scaleWidth(270),
                  ),
                ),
              ],
            ),
          ),
          Dimensions(context).scaleWidth(16).toHeight,
          Padding(
            padding: EdgeInsets.all(
              Dimensions(context).scaleHeight(8),
            ),
            child: Column(
              children: [
                Text('Welcome to the Next Level', style: TextStyle(fontSize: Dimensions(context).mFontSize27)),

                Text('of Image Creation', style: TextStyle(fontSize: Dimensions(context).mFontSize32, fontWeight: FontWeight.bold)),
                Dimensions(context).scaleWidth(32).toHeight,
                // Login Button
                GradientButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  text: 'Get Started',
                  trailingIcon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
                Dimensions(context).scaleWidth(16).toHeight,
                Text(
                  'Transform your photos into stunning AI-generated portraits and artwork in just a few taps.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions(context).mFontSize13,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
