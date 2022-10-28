import 'package:ecommerce_adminpanel/helpers/app_colors.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.color = AppColors.customButtonColor,
    this.textColor = AppColors.whiteColor,
  });
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 50,
        width: size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.buttonBlackText.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
