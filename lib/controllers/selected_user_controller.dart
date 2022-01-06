part of '_controller.dart';

class SelectedUserController extends GetxController {
  String _name = 'Selected User Name';

  String get name => _name;

  set name(String value) {
    _name = value;
    update();
  }
}
