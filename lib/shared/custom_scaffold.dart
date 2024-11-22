import 'dart:ui';

import 'package:design_test/constants.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  const CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Blur Effect
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.kSecondaryColor,
              ),
            ),
          ),

          Positioned(
            child: Opacity(
              opacity: 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.kPrimaryGradientColor,
                      AppColors.kSecondaryColor,
                    ],
                    stops: [0.5, 1.0],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -50,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.kPrimaryGradientColor,
                      AppColors.kSecondaryColor,
                    ],
                    stops: [0.5, 1.0],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          // Main Login UI
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: body,
          )
        ],
      ),
    );
  }
}
