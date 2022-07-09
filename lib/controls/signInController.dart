import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInC extends GetxController {
  late TextEditingController emailC;
  late TextEditingController passC;

  @override
  void onInit() {
    super.onInit();
    emailC = TextEditingController();
    passC = TextEditingController();
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
