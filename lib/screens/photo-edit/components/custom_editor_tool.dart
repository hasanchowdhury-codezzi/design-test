import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomEditorTool extends StatelessWidget {
  final String? title;
  final String imgUrl;
  final double? imageSize;
  const CustomEditorTool({
    super.key,
    this.title,
    required this.imgUrl,
    this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imgUrl,
          width: imageSize ?? Dimensions(context).scaleHeight(20),
        ),
        Dimensions(context).scaleWidth(4).toHeight,
        Text(
          title ?? '',
          style: TextStyle(fontSize: Dimensions(context).mFontSize12),
        ),
      ],
    );
  }
}
