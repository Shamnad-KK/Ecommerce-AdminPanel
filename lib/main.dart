import 'package:ecommerce_adminpanel/helpers/app_colors.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:ecommerce_adminpanel/helpers/init_getx_controllers.dart';
import 'package:ecommerce_adminpanel/routes/route_names.dart';
import 'package:ecommerce_adminpanel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          initialBinding: InitDependencies(),
          initialRoute: RouteNames.dashboard,
          getPages: AppRoutes.getAppRoutes(),
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.bgColor,
            appBarTheme: AppBarTheme(
              //backgroundColor: AppColors.transparent,
              elevation: 0,
              titleTextStyle: AppTextStyle.headLine6,
              iconTheme: const IconThemeData(
                color: AppColors.whiteColor,
              ),
            ),
            primarySwatch: Colors.indigo,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
