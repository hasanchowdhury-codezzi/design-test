import 'package:flutter/material.dart';

// This extension is used for the dynamic height and width for the whole mobile app

extension Dimensions on BuildContext {
  // Reference screen dimensions from Figma
  static const double _referenceHeight = 932.0;
  static const double _referenceWidth = 430.0;

  // Dynamic scaling functions based on screen size
  double scaleHeight(double height) {
    double screenHeight = MediaQuery.of(this).size.height;
    return (height / _referenceHeight) * screenHeight;
  }

  double scaleWidth(double width) {
    double screenWidth = MediaQuery.of(this).size.width;
    return (width / _referenceWidth) * screenWidth;
  }

  // Font size constants using reference height
  double get mFontSize9 => scaleHeight(9);
  double get mFontSize10 => scaleHeight(10);
  double get mFontSize11 => scaleHeight(11);
  double get mFontSize12 => scaleHeight(12);
  double get mFontSize13 => scaleHeight(13);
  double get mFontSize14 => scaleHeight(14);
  double get mFontSize16 => scaleHeight(16);
  double get mFontSize18 => scaleHeight(18);
  double get mFontSize20 => scaleHeight(20);
  double get mFontSize22 => scaleHeight(22);
  double get mFontSize26 => scaleHeight(26);
  double get mFontSize27 => scaleHeight(27);
  double get mFontSize28 => scaleHeight(28);
  double get mFontSize30 => scaleHeight(30);
  double get mFontSize32 => scaleHeight(32);

  // Device Type
  bool get isMobile => MediaQuery.of(this).size.shortestSide < 600;

  bool get isTablet => MediaQuery.of(this).size.shortestSide >= 600;
}

// This extension is used for the height and width instead of using SizedBox

extension SizedBoxExtensions on double {
  Widget get toHeight {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget get toWidth {
    return SizedBox(
      width: toDouble(),
    );
  }
}
