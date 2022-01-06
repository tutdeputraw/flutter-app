part of '../../pages/_views.dart';

class FirstScreenView extends StatelessWidget {
  const FirstScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirstScreenController());

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background 1.jpg',
            fit: BoxFit.cover,
            width: Get.width,
            height: Get.height,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.nameTF,
                  decoration: _textFieldStyle('Name'),
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: controller.palindromTF,
                  decoration: _textFieldStyle('Palindrom'),
                ),
                const SizedBox(height: 45),
                ElevatedButton(
                  style: _buttonStyle,
                  onPressed: controller.checkButtonOnClick,
                  child: Text(
                    'CHECK',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: _buttonStyle,
                  onPressed: controller.nextButtonOnCLick,
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _textFieldStyle(String label) {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      labelText: label,
      labelStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16,
      ),
    );
  }

  ButtonStyle get _buttonStyle {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      primary: const Color(0xFF2B637B),
    );
  }
}
