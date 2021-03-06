part of '../../pages/_controllers.dart';

class FirstScreenController extends GetxController {
  TextEditingController _nameTF = TextEditingController();
  TextEditingController _palindromTF = TextEditingController();

  @override
  void onInit() {
    Get.put(SelectedUserController());
    super.onInit();
  }

  void checkButtonOnClick() {
    final palindrom = Get.put(PalindromController());

    if (palindrom.isPalindrom(palindromTF.text)) {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.SUCCES,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'is Palindrom',
        btnOkOnPress: () {},
      ).show();
    } else {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.ERROR,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'not Palindrom',
        btnOkOnPress: () {},
      ).show();
    }
  }

  void nextButtonOnCLick() {
    final secondScreen = Get.put(SecondScreenController());
    secondScreen.goToPage(nameTF.text);
  }

  TextEditingController get nameTF => _nameTF;

  set nameTF(TextEditingController value) {
    _nameTF = value;
    update();
  }

  TextEditingController get palindromTF => _palindromTF;

  set palindromTF(TextEditingController value) {
    _palindromTF = value;
    update();
  }
}
