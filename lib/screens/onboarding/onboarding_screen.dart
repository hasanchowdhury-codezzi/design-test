import 'dart:ui';
import 'package:design_test/shared/customElevatedButton.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF003044), // Dark blue color for the left
                      Color(0xFF0A1A32), // Slightly lighter dark color for the right
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.auto_awesome, // Icon similar to the stars
                      color: Color(0xFF00E3F5), // Cyan blue for the icon
                      size: 24,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Welcome to PhotoAI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [
                              Color(0xFF00E3F5), // Cyan blue
                              Color(0xFF0058F5), // Royal blue
                            ],
                          ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('Welcome to the Next Level', style: TextStyle(fontSize: 24)),
              const Text('of Image Creation', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              // Login Button
              GradientButton(
                onPressed: () {},
                text: 'Log In',
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
        ),
      ),
    );
  }
}
