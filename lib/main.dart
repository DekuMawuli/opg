import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:open_gate/controllers/binding.dart';
import 'package:open_gate/ui/pages/login/login.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
