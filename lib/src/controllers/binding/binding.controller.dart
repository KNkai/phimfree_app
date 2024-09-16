import 'package:get/get.dart';
import 'package:phimfree_app/src/controllers/auth/auth.controller.dart';

class BindingController extends Bindings {
  @override
  void dependencies() {
    // Inject the AuthController lazily
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
