import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String imgUrl;
  const CustomSocialButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.imgUrl,
  });
// /Color(0xff319F43).withOpacity(0.2)
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Transparent background
          border: Border.all(
            color: Colors.grey.withOpacity(0.2), // Border color matching the style
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Google logo
            SvgPicture.asset(
              imgUrl,
              width: 18,
            ),
            const SizedBox(width: 12),
            // Text
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.5), // Light grey text color
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}