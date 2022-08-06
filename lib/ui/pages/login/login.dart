import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:open_gate/controllers/auth/auth.dart';
import 'package:open_gate/controllers/form/form.dart';
import 'package:open_gate/ui/pages/m_home/home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find<AuthController>();
    final FormValidationController formController =
        Get.find<FormValidationController>();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.mediaQuery.size.height,
              width: Get.mediaQuery.size.width,
              child: Column(
                children: [
                  Spacer(flex: 1),
                  Center(
                    child: SvgPicture.asset(
                      "assets/images/login.svg",
                      height: 200,
                      width: 600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formController.formKey,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: TextFormField(
                            controller: formController.unameController,
                            onSaved: (val) {
                              controller.usernameTxt(val);
                            },
                            validator: (val) {
                              return formController.emptyText(val!);
                            },
                            cursorWidth: 5,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              label: Text("Username"),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              filled: true,
                              border: InputBorder.none,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: TextFormField(
                            controller: formController.password1Controller,
                            onSaved: (val) {
                              controller.passwordTxt(val);
                            },
                            validator: (val) {
                              return formController.emptyText(val!);
                            },
                            cursorWidth: 5,
                            cursorColor: Colors.black,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text("Password"),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              filled: true,
                              border: InputBorder.none,
                              fillColor: Colors.grey.shade100,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: InkWell(
                              onTap: () {
                                // formController.checkValidation();
                                Get.to(() => HomeDashboard());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Spacer(flex: 1)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
