import 'package:ecommerce_adminpanel/helpers/app_colors.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerTileWidget extends StatelessWidget {
  const DrawerTileWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.tileColor,
    this.textColor = AppColors.blackColor,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Color? tileColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
        onTap();
      },
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
        title: Text(
          text,
          style: AppTextStyle.body1.copyWith(color: textColor),
        ),
        tileColor: tileColor,
      ),
    );
  }
}
