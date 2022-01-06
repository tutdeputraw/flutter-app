part of '../../pages/_controllers.dart';

class ThirdScreenController extends GetxController {
  late User data;
  int initPage = 1;
  bool _isLoading = true;
  RefreshController refreshController = RefreshController(
    initialRefresh: false,
  );

  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }

  Future<void> fetchApi() async {
    initPage = 1;
    isLoading = true;

    final newData = await UserServices.GetUser(initPage);
    if (newData != null) {
      data = newData;
      isLoading = false;
      refreshController.refreshCompleted();
      update();
    } else {
      AwesomeDialog(
        dismissOnTouchOutside: false,
        dismissOnBackKeyPress: false,
        context: Get.context!,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'Data is Empty',
        btnOkOnPress: () {
          Get.back();
        },
      ).show();
    }
  }

  Future<void> loadNextData() async {
    initPage += 1;
    User newData = (await UserServices.GetUser(initPage))!;
    data.data.addAll(newData.data);
    data.page = newData.page;
    refreshController.loadComplete();
    update();
  }

  void cardOnClick(UserData data) {
    final selectedUser = Get.find<SelectedUserController>();
    selectedUser.name = '${data.firstName} ${data.lastName}';
    update();
  }

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }
}
