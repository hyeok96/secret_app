import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/controller/signup_controller.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const routes = "/signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller.emailController,
          ),
          TextField(
            controller: controller.usernameController,
          ),
          TextField(
            controller: controller.pwController,
          ),
          TextField(
            controller: controller.pwConfirmCtroller,
          ),
          ElevatedButton(
            onPressed: controller.signup,
            child: const Text("가입하기"),
          )
        ],
      ),
    );
  }
}
