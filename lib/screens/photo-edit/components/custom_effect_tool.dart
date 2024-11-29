import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomEffectTool extends StatelessWidget {
  final String title;
  final String imgUrl;
  const CustomEffectTool({
    super.key,
    required this.title,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl,
        ),
        Dimensions(context).scaleWidth(6).toHeight,
        Text(
          title,
          style: TextStyle(fontSize: Dimensions(context).mFontSize12),
        )
      ],
    );
  }
}
