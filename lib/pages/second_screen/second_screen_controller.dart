part of '../../pages/_controllers.dart';

class SecondScreenController extends GetxController {
  late String name;

  void goToPage(String name) {
    this.name = name;
    Get.to(() => const SecondScreenView());
  }

  void chooseAUserOnClick() {
    Get.to(() => const ThirdScreenView());
  }
}
