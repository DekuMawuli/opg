import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_gate/utils/app_text_styles.dart';
import 'package:open_gate/utils/colors.dart';

class AppSideBar extends StatelessWidget {
  const AppSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 30,
          left: 20,
          right: 20,
        ),
        color: darkColor,
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Icon(
                    Iconsax.message_circle,
                    color: brigthGreenColor,
                    size: 60,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "SeriSMS",
                    style: dTextStyle(
                      fw: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: accentColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.message_edit,
                      color: accentColor,
                      size: 28,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Compose",
                      style: dTextStyle(
                        color: accentColor,
                        fw: FontWeight.w800,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Iconsax.activity,
                color: Colors.white,
              ),
              title: Text(
                "Overview",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Iconsax.people,
                color: Colors.white,
              ),
              title: Text(
                "Contacts",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                IconlyLight.graph,
                color: Colors.white,
              ),
              title: Text(
                "Groups",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                IconlyLight.message,
                color: Colors.white,
              ),
              title: Text(
                "Messages",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Iconsax.dollar_circle,
                color: Colors.white,
              ),
              title: Text(
                "Purchases",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Iconsax.buy_crypto,
                color: Colors.white,
              ),
              title: Text(
                "SMS Bundles",
                style: dTextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            Divider(color: bgColor, thickness: 0.5),
            ListTile(
              onTap: () {},
              leading: Icon(
                Iconsax.logout,
                color: Colors.white,
              ),
              title: Text(
                "Sign Out",
                style: dTextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
