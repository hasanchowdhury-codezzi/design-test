import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backGroundColor;
  final bool? useGradient;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backGroundColor,
    this.useGradient = true,
    this.horizontalPadding,
    this.verticalPadding,
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent, // Remove splash effect
      highlightColor: Colors.transparent, // Remove highlight effect
      child: Container(
        decoration: BoxDecoration(
          color: backGroundColor,
          gradient: useGradient!
              ? const LinearGradient(
                  colors: [Color(0xFF00E3F5), Color(0xFF0058F5)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null, // Only apply gradient if `useGradient` is true
          borderRadius: BorderRadius.circular(25), // Rounded edges
        ),
        padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 14, horizontal: horizontalPadding ?? 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) ...[
              leadingIcon!, // Render icon if provided
              const SizedBox(width: 8), // Add spacing between icon and text
            ],
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 8),
              trailingIcon!, // Render icon if provided
            ],
          ],
        ),
      ),
    );
  }
}
