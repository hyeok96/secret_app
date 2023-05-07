import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/view/pages/secret_page.dart';
import 'package:secret_cat/view/pages/setting_page.dart';
import 'package:secret_cat/view/pages/upload_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const routes = "/main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("비밀 듣는 고양이"),
          ListTile(
            title: const Text("비밀보기"),
            onTap: () => Get.toNamed(SecretPage.routes),
          ),
          ListTile(
            title: const Text("비밀올리기"),
            onTap: () => Get.toNamed(UploadPage.routes),
          ),
          ListTile(
            title: const Text("앱설정"),
            onTap: () => Get.toNamed(SettingPage.routes),
          ),
        ],
      ),
    );
  }
}
