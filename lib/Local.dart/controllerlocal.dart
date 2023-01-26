import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller {
  void initlocall(String _locallang) {
    Locale locale=Locale(_locallang);
    Get.updateLocale(locale);
  }
}
