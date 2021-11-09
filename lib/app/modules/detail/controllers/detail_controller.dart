// ignore_for_file: unnecessary_new

import 'package:get/get.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController

  late String result;
  Map<String, int> occuranceOfCharacter = {};

  @override
  void onInit() {
    result = Get.arguments;

    for (int i = 0; i < result.length; i++) {
      int count = occuranceOfCharacter[result[i]] ?? 0;
      occuranceOfCharacter[result[i]] = count + 1;
    }

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
