import 'dart:ui';

import 'package:design_test/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNabBar;

  const CustomScaffold({super.key, required this.body, this.appBar, this.bottomNabBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: appBar,
      bottomNavigationBar: bottomNabBar,
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
                      AppColors.kGradientColor,
                      AppColors.kSecondaryColor,
                    ],
                    stops: [0.3, 1.0],
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
                      AppColors.kGradientColor,
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

          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              children: [
                const SizedBox(height: 60.0),
                Flexible(child: body),
              ],
            ),
          ),

          // app bar
          // if (appBar != null)
          //   Positioned(
          //     top: 0,
          //     left: 0,
          //     right: 0,
          //     child: appBar!,
          //   ),

          // // bottom navbar
          // if (bottomNabBar != null)
          //   Positioned(
          //     left: 0,
          //     right: 0,
          //     bottom: 0,
          //     child: bottomNabBar!,
          //   ),
        ],
      ),
    );
  }
}
