import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_cat/controller/upload_controller.dart';

class UploadPage extends GetView<UploadController> {
  const UploadPage({super.key});
  static const routes = "/upload";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("UploadPage"),
          TextField(
            controller: controller.inputController,
            maxLines: 10,
            minLines: 2,
          ),
          ElevatedButton(
            onPressed: controller.upload,
            child: const Text("upload"),
          ),
        ],
      ),
    );
  }
}
