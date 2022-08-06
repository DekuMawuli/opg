import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_gate/utils/app_text_styles.dart';

import 'package:open_gate/utils/colors.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.mediaQuery.size.height,
              width: Get.mediaQuery.size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.monetization_on,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MobileDashTabItem(
                          title: "SMS Left",
                          value: "300",
                          iconData: Iconsax.message,
                          color: successColor,
                        ),
                        MobileDashTabItem(
                          title: "Contacts",
                          value: "98",
                          iconData: Iconsax.people,
                          color: warningColor,
                        ),
                        MobileDashTabItem(
                          title: "Groups",
                          value: "03",
                          iconData: IconlyLight.user_1,
                          color: dangerColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "What Do you Want To Do ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Send Message",
                            value: "New",
                            iconData: IconlyLight.send,
                            color: successColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Contacts",
                            value: "Add",
                            iconData: Iconsax.user_add,
                            color: accentColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Groups",
                            value: "Add",
                            iconData: IconlyLight.user_1,
                            color: violetColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Purchase Bundle",
                            value: "\$",
                            iconData: Iconsax.money,
                            color: warningColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "SMS Bundles Available",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Send Message",
                            value: "New",
                            iconData: IconlyLight.send,
                            color: successColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Contacts",
                            value: "Add",
                            iconData: Iconsax.user_add,
                            color: accentColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Groups",
                            value: "Add",
                            iconData: IconlyLight.user_1,
                            color: violetColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MobileDashTabItem(
                            title: "Purchase Bundle",
                            value: "\$",
                            iconData: Iconsax.money,
                            color: warningColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Compose Message",
        onPressed: () {
          Get.snackbar(
            'Coming Up',
            'Feature Will Be Implemented Soon',
            backgroundColor: darkColor,
            colorText: Colors.white,
            icon: Icon(
              Iconsax.info_circle,
              color: brigthGreenColor,
            ),
            duration: Duration(seconds: 2),
            margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        backgroundColor: darkColor,
        child: Icon(Iconsax.message_programming),
      ),
    );
  }
}

class MobileDashTabItem extends StatelessWidget {
  const MobileDashTabItem({
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
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      height: Get.height * 0.18,
      width: Get.width * 0.60,
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
              Icon(iconData, size: 30),
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
