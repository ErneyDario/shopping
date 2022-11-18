import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/Controlers/ControlGral.dart';

import 'UI/home.dart';

void main() {
  Get.put(ControlGral());

  runApp(const MyApp());
}
