import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:secret_cat/model/profile_model.dart';
import 'package:secret_cat/util/api_routes.dart';
import 'package:secret_cat/view/pages/login_page.dart';
import 'package:secret_cat/view/pages/main_page.dart';

class AuthController extends GetxController {
  final Rxn<ProfileModel> _profile = Rxn();
  Dio dio = Dio();

  ProfileModel? get profile => _profile.value;

  login(String id, String pw) async {
    var res = await dio.post(
      ApiRoutes.login,
      data: {
        "identity": id,
        "password": pw,
      },
    );
    if (res.statusCode == 200) {
      var data = Map<String, dynamic>.from(res.data['record']);
      var profile = ProfileModel.fromMap(data);
      _profile(profile);
    }
  }

  logout() {
    _profile.value = null;
  }

  signup(String email, String pw, String pwConfirm, String username) async {
    var res = await dio.post(
      ApiRoutes.signup,
      data: {
        'email': email,
        'password': pw,
        'passwordConfirm': pwConfirm,
        'username': username,
      },
    );
    if (res.statusCode == 200) {
      _profile(ProfileModel.fromMap(res.data));
    }
  }

  _handleOnProfileChange(value) {
    if (value != null) {
      Get.offAndToNamed(MainPage.routes);
      return;
    }
    Get.offAndToNamed(LoginPage.routes);
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_profile, _handleOnProfileChange);
  }
}
