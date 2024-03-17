import 'package:flutter/material.dart';
import 'package:taskaty/core/utils/app_colors.dart';
import 'package:taskaty/core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    this.height,
  });
  final String text;
  final Function() onPressed;
  final double width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: AppColors.primary,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:
              getBodyStyle(color: AppColors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}