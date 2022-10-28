import 'package:ecommerce_adminpanel/common/drawer_widget.dart';
import 'package:ecommerce_adminpanel/helpers/app_padding.dart';
import 'package:ecommerce_adminpanel/helpers/app_spacing.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:ecommerce_adminpanel/view/dashboard/widgets/widgets_card_widget.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: key,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            key.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Admin Dashboard",
                  style: AppTextStyle.headline3,
                ),
                AppSpacing.kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DashboardCardWidget(
                      title: "Total Users",
                      count: "1",
                      buttonText: "View Users",
                      onTap: () {},
                    ),
                    DashboardCardWidget(
                      title: "Total Products",
                      count: "1",
                      buttonText: "View Products",
                      onTap: () {},
                    ),
                  ],
                ),
                AppSpacing.kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DashboardCardWidget(
                      title: "Total Orders",
                      count: "1",
                      buttonText: "View Orders",
                      onTap: () {},
                    ),
                    DashboardCardWidget(
                      title: "Product Categories",
                      count: "1",
                      buttonText: "View Categories",
                      onTap: () {},
                    ),
                  ],
                ),
                AppSpacing.kHeight10,
                Padding(
                  padding: AppPadding.mainPading,
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width * 0.525,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Total Sales",
                          style: AppTextStyle.headline4,
                        ),
                        Text(
                          "12345",
                          style: AppTextStyle.titleMedium,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
