import 'dart:ui';
import 'package:design_test/screens/login/login_screen.dart';
import 'package:design_test/shared/customElevatedButton.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:design_test/utils/sizer.dart';
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
                  const Color(0xFF003044).withOpacity(0.9), // Dark blue color for the left
                  const Color(0xFF0A1A32).withOpacity(0.4), // Slightly lighter dark color for the right
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.auto_awesome_outlined, // Icon similar to the stars
                  color: Color(0xFF00E3F5), // Cyan blue for the icon
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  'Welcome to PhotoAI',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF00E3F5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 450,
            width: Sizer.width(context),
            child: Stack(
              children: [
                Positioned(
                  left: -100,
                  top: 0,
                  child: Image.asset(
                    'assets/images/onboarding_image_left.png',
                    height: 250,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -90,
                  child: Image.asset(
                    'assets/images/onboarding_image_right.png',
                    height: 250,
                  ),
                ),
                Positioned.fill(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: SvgPicture.asset(
                      'assets/images/background.svg',
                      // width: 300,
                      // height: 300,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: MediaQuery.of(context).size.width / 5,
                  child: Image.asset(
                    'assets/images/onboarding_image_center.png',
                    width: 250,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text('Welcome to the Next Level', style: TextStyle(fontSize: 27)),

                const Text('of Image Creation', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 32,
                ),
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
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Transform your photos into stunning AI-generated portraits and artwork in just a few taps.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
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
