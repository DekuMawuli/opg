import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_gate/utils/app_text_styles.dart';

class DashboardTopBar extends StatelessWidget {
  const DashboardTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "Overview",
            style: dTextStyle(size: 25, fw: FontWeight.w800),
          ),
        ),
        Expanded(
          flex: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Iconsax.notification),
              SizedBox(width: 20),
              Icon(Iconsax.user),
              SizedBox(width: 5),
              Text(
                "Deku Mawuli",
                style: dTextStyle(fw: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
