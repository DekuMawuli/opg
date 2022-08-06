import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormValidationController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController fnameController,
      lnameController,
      emailController,
      unameController,
      senderNameController,
      password1Controller,
      password2Controller;

  @override
  void onInit() {
    fnameController = TextEditingController();
    lnameController = TextEditingController();
    unameController = TextEditingController();
    senderNameController = TextEditingController();
    password1Controller = TextEditingController();
    password2Controller = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    fnameController.dispose();
    lnameController.dispose();
    senderNameController.dispose();
    password1Controller.dispose();
    password2Controller.dispose();
    unameController.dispose();
    super.onClose();
  }

  String? validateFirstName(String fname) {
    return fname.length < 3 ? "Minimum is 4 letters" : null;
  }

  String? validateLastName(String lname) {
    return lname.length < 3 ? "Minimum is 4 letters" : null;
  }

  String? validateUsername(String uname) {
    return uname.length < 6 ? "Minimum is 4 letters" : null;
  }

  String? validateSenderName(String senderName) {
    if (senderName.length < 3) {
      return "Sender ID is too short";
    }
    if (senderName.length > 11) {
      return "Sender ID is greater than 11";
    }
    return null;
  }

  String? validatedEmail(String email) {
    return GetUtils.isEmail(email) ? "Invalid Email" : null;
  }

  String? emptyText(String un) {
    return un.isEmpty ? "Empty Username Not Allowed" : null;
  }

  String? validatedPassword1(String pwd) {
    return pwd.length < 6 ? "Minimum is 6 letters" : null;
  }

  String? validatedPassword2(String pwd) {
    if (password1Controller.text != pwd) {
      return "Pasword are not the same";
    }
    if (pwd.length < 6) {
      return "Minimum is 6 letters";
    }
    return null;
  }

  void checkValidation() {
    final isValid = formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
  }
}
