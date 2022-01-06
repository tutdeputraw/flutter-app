part of '_controller.dart';

class PalindromController extends GetxController {
  bool isPalindrom(String text) {
    List<String> array = text.replaceAll(' ', '').split('');
    int indexFromLeft = 0;
    int indexFromRight = array.length - 1;

    while (indexFromRight - 1 > 1) {
      if (array[indexFromLeft++] != array[indexFromRight--]) {
        return false;
      }
    }
    return true;
  }
}
