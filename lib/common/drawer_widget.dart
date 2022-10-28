import 'package:ecommerce_adminpanel/helpers/app_colors.dart';
import 'package:ecommerce_adminpanel/helpers/app_spacing.dart';
import 'package:ecommerce_adminpanel/routes/route_names.dart';
import 'package:ecommerce_adminpanel/widgets/custom_button.dart';
import 'package:ecommerce_adminpanel/widgets/drawer_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPictureSize: Size.fromRadius(40),
            accountName: Text("Shamnad KK"),
            accountEmail: Text("abc@gmail.com"),
            currentAccountPicture: CircleAvatar(),
          ),
          const Divider(),
          DrawerTileWidget(
            text: "Dashboard",
            tileColor: Get.currentRoute == RouteNames.dashboard
                ? AppColors.mainColor
                : null,
            textColor: Get.currentRoute == RouteNames.dashboard
                ? AppColors.whiteColor
                : AppColors.blackColor,
            icon: Icons.person,
            onTap: () {
              Get.toNamed(RouteNames.dashboard);
            },
          ),
          DrawerTileWidget(
            text: "User Management",
            tileColor: Get.currentRoute == RouteNames.userManagementScreen
                ? AppColors.mainColor
                : null,
            textColor: Get.currentRoute == RouteNames.userManagementScreen
                ? AppColors.whiteColor
                : AppColors.blackColor,
            icon: Icons.person,
            onTap: () {
              Get.toNamed(RouteNames.userManagementScreen);
            },
          ),
          DrawerTileWidget(
            text: "Product Management",
            tileColor: Get.currentRoute == RouteNames.productManagementScreen
                ? AppColors.mainColor
                : null,
            textColor: Get.currentRoute == RouteNames.productManagementScreen
                ? AppColors.whiteColor
                : AppColors.blackColor,
            icon: Icons.production_quantity_limits,
            onTap: () {
              Get.toNamed(RouteNames.productManagementScreen);
            },
          ),
          DrawerTileWidget(
            text: "Category Management",
            icon: Icons.production_quantity_limits,
            onTap: () {},
          ),
          DrawerTileWidget(
            text: "Variation Management",
            icon: Icons.production_quantity_limits,
            onTap: () {},
          ),
          DrawerTileWidget(
            text: "Orders",
            icon: Icons.shopping_bag,
            onTap: () {},
          ),
          AppSpacing.kHeight40,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: CustomButtonWidget(
              text: "Log Out",
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
