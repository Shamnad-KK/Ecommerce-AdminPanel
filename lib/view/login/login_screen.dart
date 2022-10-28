import 'package:ecommerce_adminpanel/controller/login_controller.dart';
import 'package:ecommerce_adminpanel/helpers/app_padding.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:ecommerce_adminpanel/view/dashboard/dashboard_screen.dart';
import 'package:ecommerce_adminpanel/widgets/custom_button.dart';
import 'package:ecommerce_adminpanel/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    LoginController loginController = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPadding.mainPading,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: AppTextStyle.headline4,
                  ),
                  SizedBox(height: size.height * 0.15),
                  SizedBox(
                    width: size.width * 0.4,
                    child: CustomTextField(
                        controller: loginController.emailController,
                        hint: "Email"),
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.4,
                    child: CustomTextField(
                        controller: loginController.passwordController,
                        hint: "Password"),
                  ),
                  SizedBox(height: size.height * 0.05),
                  SizedBox(
                    width: size.width * 0.4,
                    child: CustomButtonWidget(
                      text: "Login",
                      onTap: () {
                        Get.to(const DashBoard());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
