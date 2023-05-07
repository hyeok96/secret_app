import 'package:get/route_manager.dart';
import 'package:secret_cat/view/pages/login_page.dart';
import 'package:secret_cat/view/pages/main_page.dart';
import 'package:secret_cat/view/pages/secret_page.dart';
import 'package:secret_cat/view/pages/setting_page.dart';
import 'package:secret_cat/view/pages/signup_page.dart';
import 'package:secret_cat/view/pages/upload_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: MainPage.routes, page: () => const MainPage()),
    GetPage(name: LoginPage.routes, page: () => const LoginPage()),
    GetPage(name: SecretPage.routes, page: () => const SecretPage()),
    GetPage(name: SettingPage.routes, page: () => const SettingPage()),
    GetPage(name: SignupPage.routes, page: () => const SignupPage()),
    GetPage(name: UploadPage.routes, page: () => const UploadPage()),
  ];
}
