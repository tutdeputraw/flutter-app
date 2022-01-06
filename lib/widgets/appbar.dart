part of '_widget.dart';

AppBar appBarWidget({required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: const Color(0xFF04021D),
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Color(0xFF554AF0),
      ),
      onPressed: () => Get.back(),
    ),
  );
}
