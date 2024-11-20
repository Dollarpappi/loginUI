import 'dart:ui';

import 'package:get/get.dart';

showSnackbar(Color color, String text) {
  Get.showSnackbar(GetSnackBar(
    title: "Message",
    message: text,
    backgroundColor: color,
    duration: const Duration(seconds: 5),
  ));
}
