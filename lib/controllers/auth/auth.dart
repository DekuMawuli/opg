import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:open_gate/data/repos/auth_repo.dart';

class AuthController extends GetxController {
  final AuthRepository repository;
  AuthController(this.repository);

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  RxString usernameTxt = "".obs;
  RxString passwordTxt = "".obs;

  RxMap loggedInUser = RxMap();

  login() async {
    loggedInUser(
      await repository.loginUser(usernameTxt.value, passwordTxt.value),
    );
  }

  logout() async {
    loggedInUser.clear();
  }

  registerUser() async {
    loggedInUser(
      await repository.registerUser({}),
    );
  }


}
