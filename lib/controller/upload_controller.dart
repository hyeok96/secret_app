import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/util/api_routes.dart';

class UploadController extends GetxController {
  TextEditingController inputController = TextEditingController();
  Dio dio = Dio();

  upload() async {
    if (inputController.text.isEmpty) return;
    var res = await dio.post(
      ApiRoutes.upload,
      data: {
        'secret': inputController.text,
      },
    );
    print(res.data);
  }
}
