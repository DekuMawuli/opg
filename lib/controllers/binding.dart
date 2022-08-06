import 'package:get/get.dart';
import 'package:open_gate/controllers/auth/auth.dart';
import 'package:open_gate/controllers/form/form.dart';
import 'package:open_gate/data/repos/auth_repo.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(
        AuthRepoImpl(),
      ),
      fenix: true,
    );
    Get.lazyPut<FormValidationController>(
      () => FormValidationController(),
    );
  }
}
