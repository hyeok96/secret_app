import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:secret_cat/model/secret_model.dart';
import 'package:secret_cat/util/api_routes.dart';

class SecretController extends GetxController {
  final RxList<SecretModel> _secrets = <SecretModel>[].obs;
  Dio dio = Dio();

  List<SecretModel> get secrets => _secrets;

  fetchSecrets() async {
    var res = await dio.get(ApiRoutes.secrets);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data["items"]).toList();
      _secrets(
        data.map((e) => SecretModel.fromMap(e)).toList(),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchSecrets();
  }
}
