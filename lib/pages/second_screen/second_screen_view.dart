part of '../../pages/_views.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SecondScreenController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: controller.backOnClick,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Welcome'),
          Text('John Dao'),
          Spacer(),
          Text('Selected User Name'),
          Spacer(),
          ElevatedButton(onPressed: (){}, child: const Text('Choose a User')),
        ],
      ),
    );
  }
}
