import 'package:ecommerce_adminpanel/helpers/app_padding.dart';
import 'package:ecommerce_adminpanel/helpers/apptext_style.dart';
import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  const DashboardCardWidget({
    Key? key,
    required this.title,
    required this.count,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String count;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: AppPadding.mainPading,
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.25,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: AppTextStyle.headline4,
            ),
            Text(
              count,
              style: AppTextStyle.titleMedium,
            ),
            InkWell(
              onTap: () {
                onTap();
              },
              child: Container(
                height: size.height * 0.04,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    buttonText,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
