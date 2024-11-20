// ignore_for_file: empty_catches

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:responsivelogin/src/snackbar.dart';

class SignInController extends GetxController {
  static SignInController get instance {
    return Get.find<SignInController>();
  }

  var isLoading = Rx<bool>(false);

  Future send({required String email, required String password}) async {
    isLoading.value = true;
    update();
    final response = await http.post(
      Uri.parse('https://nextpetbuddyapi.onrender.com/api/v1/token/'),
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      showSnackbar(Colors.blue, 'Success');
    } else {
      showSnackbar(Colors.red, jsonDecode(response.body)['detail'] ?? "Failed");
    }

    isLoading.value = false;
    update();
  }
}
