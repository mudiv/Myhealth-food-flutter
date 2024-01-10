import 'package:get/get.dart';

class LanguageController extends GetxController {
  RxBool isArabic = false.obs;

  void toggleLanguage() {
    isArabic.toggle();
  }
}
