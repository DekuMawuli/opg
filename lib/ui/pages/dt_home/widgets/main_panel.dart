import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_gate/ui/pages/dt_home/widgets/dash_topbar.dart';
import 'package:open_gate/utils/app_text_styles.dart';
import 'package:open_gate/utils/colors.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardTopBar(),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DashTabItem(
                            title: "SMS Left",
                            value: "400",
                            iconData: Iconsax.message,
                            color: successColor,
                          ),
                          DashTabItem(
                            title: "Contacts",
                            value: "98",
                            iconData: Iconsax.people,
                            color: accentColor,
                          ),
                          DashTabItem(
                            title: "Groups",
                            value: "03",
                            iconData: IconlyLight.graph,
                            color: violetColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DashTabItem extends StatelessWidget {
  const DashTabItem({
    Key? key,
    required this.title,
    required this.value,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      height: Get.height * 0.22,
      width: Get.width * 0.18,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: dTextStyle(fw: FontWeight.w600, size: 18),
              ),
              Spacer(),
              Icon(iconData, size: 40),
            ],
          ),
          SizedBox(height: 15),
          Text(
            value,
            style: dTextStyle(
              fw: FontWeight.w900,
              size: 45,
            ),
          )
        ],
      ),
    );
  }
}
