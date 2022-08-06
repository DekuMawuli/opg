import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_gate/ui/pages/dt_home/widgets/app_sidebar.dart';
import 'package:open_gate/ui/pages/dt_home/widgets/main_panel.dart';

import 'package:open_gate/utils/colors.dart';

class HomeDesktopDashboard extends StatelessWidget {
  const HomeDesktopDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppSideBar(),
            MainPanel(),
          ],
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
