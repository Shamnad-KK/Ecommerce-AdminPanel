import 'package:ecommerce_adminpanel/controller/dashboard_controller.dart';
import 'package:ecommerce_adminpanel/controller/login_controller.dart';
import 'package:get/get.dart';

class InitDependencies implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    Get.put(DashboardController());
  }
}
