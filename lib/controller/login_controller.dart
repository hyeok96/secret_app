import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/controller/auth_controller.dart';
import 'package:secret_cat/view/pages/signup_page.dart';

class LoginController extends GetxController {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  login() {
    Get.find<AuthController>().login(idController.text, pwController.text);
  }

  toSignupPage() {
    Get.toNamed(SignupPage.routes);
  }
}
