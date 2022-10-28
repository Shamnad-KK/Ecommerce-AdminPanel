import 'package:ecommerce_adminpanel/helpers/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static final buttonBlackText = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.sp,
  );
  static final body1 = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.sp,
  );
  static final body2 = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.sp,
  );

  static final titleLarge = TextStyle(
    color: AppColors.blackColor,
    fontSize: 22.sp,
    // fontWeight: FontWeight.bold,
  );

  static final titleMedium = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static final bodySmall = TextStyle(
    fontSize: 12.sp,
    color: AppColors.blackColor,
  );

  static final labelSmall = TextStyle(
    fontSize: 11.sp,
    color: AppColors.blackColor,
  );

  static final validatorStyle = TextStyle(
    fontSize: 12.sp,
    color: AppColors.blackColor,
  );

  //Used for Appbar
  static final headLine6 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  //Used for main large headlines in Welcome screen
  static final headline3 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w700,
  );

  static final headline4 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );

  static final subtitle1 = TextStyle(
    color: AppColors.dullWhite,
    fontSize: 16.sp,
  );

  static final subtitle2 = TextStyle(
    color: AppColors.dullWhite,
    fontSize: 14.sp,
  );

  static final hintTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.sp,
  );

  static final activeTabBarStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 15.sp,
  );

  static final inAtiveTabBarStyle = TextStyle(
    color: AppColors.dullWhite,
    fontSize: 15.sp,
  );
}
