import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/controller/auth_controller.dart';
import 'package:secret_cat/controller/login_controller.dart';
import 'package:secret_cat/controller/secret_controller.dart';
import 'package:secret_cat/controller/signup_controller.dart';
import 'package:secret_cat/controller/upload_controller.dart';
import 'package:secret_cat/util/pages.dart';
import 'package:secret_cat/view/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Neo",
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(
          () => LoginController(),
          fenix: true,
        );
        Get.lazyPut(
          () => SecretController(),
          fenix: true,
        );
        Get.lazyPut(
          () => UploadController(),
          fenix: true,
        );
        Get.lazyPut(
          () => SignupController(),
          fenix: true,
        );
      }),
      getPages: AppPages.pages,
      initialRoute: LoginPage.routes,
      // home: const MainPage(),
    );
  }
}
