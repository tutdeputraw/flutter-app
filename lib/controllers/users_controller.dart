part of '_controller.dart';

class UsersController extends GetxController {
  late User _user;

  Future<void> callApi() async {
    user = (await UserServices.GetUser(1))!;
  }

  User get user => _user;

  set user(User value) {
    _user = value;
    update();
  }
}
