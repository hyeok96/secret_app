import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const routes = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.idController,
              ),
              TextField(
                controller: controller.pwController,
              ),
              ElevatedButton(
                onPressed: controller.login,
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: controller.toSignupPage,
                child: const Text("화원가입"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
