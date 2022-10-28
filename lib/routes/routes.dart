import 'package:ecommerce_adminpanel/routes/route_names.dart';
import 'package:ecommerce_adminpanel/view/dashboard/dashboard_screen.dart';
import 'package:ecommerce_adminpanel/view/login/login_screen.dart';
import 'package:ecommerce_adminpanel/view/product_management/product_management_screen.dart';
import 'package:ecommerce_adminpanel/view/user_management/user_management_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static getAppRoutes() => [
        GetPage(name: RouteNames.loginScreen, page: () => const LoginScreen()),
        GetPage(name: RouteNames.dashboard, page: () => const DashBoard()),
        GetPage(
            name: RouteNames.userManagementScreen,
            page: () => const UserManagementScreen()),
        GetPage(
            name: RouteNames.productManagementScreen,
            page: () => const ProductManagementScreen()),
      ];
}
