import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:responsivelogin/src/snackbar.dart';

class CreateAccount extends GetxController {
  static CreateAccount get instance {
    return Get.find<CreateAccount>();
  }

  var isLoading = Rx<bool>(false);
  creatUser(
      {required String name,
      required String password,
      required String email}) async {
    isLoading.value = true;
    update();
    final userpost = await http.post(
        Uri.parse("https://nextpetbuddyapi.onrender.com/api/v1/user/"),
        body: {
          "username": name,
          "password": password,
          "email": email,
        });

    print(userpost.body);

    if (userpost.statusCode == 201) {
      showSnackbar(Colors.green, "Successful");
    } else {
      showSnackbar(Colors.red, jsonDecode(userpost.body)["detail"] ?? "Failed");
    }
    isLoading.value = false;
    update();
  }
}
