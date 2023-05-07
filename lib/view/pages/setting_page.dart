import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:secret_cat/controller/auth_controller.dart';

class SettingPage extends GetView<AuthController> {
  const SettingPage({super.key});
  static const routes = "/setting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(controller.profile!.username),
            subtitle: Text(controller.profile!.name),
          ),
          ElevatedButton(
            onPressed: controller.logout,
            child: const Text("로그아웃"),
          ),
        ],
      ),
    );
  }
}
