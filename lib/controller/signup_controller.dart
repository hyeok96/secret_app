import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/controller/auth_controller.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  TextEditingController pwConfirmCtroller = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  signup() {
    Get.find<AuthController>().signup(emailController.text, pwController.text,
        pwConfirmCtroller.text, usernameController.text);
  }
}
