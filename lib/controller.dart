import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class SwitchController extends GetxController {
  var switchValue = false.obs;
}
