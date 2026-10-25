
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsDialog {
  static void show({
    required String title,
    required String content,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title,style:TextStyle(fontWeight: FontWeight.bold)),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('Cancel',style:TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('Yes',style:TextStyle(color: Colors.green)),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
