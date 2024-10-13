import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class MenuSettingsProfileScreen extends StatelessWidget {
  MenuSettingsProfileScreen({Key? key}) : super(key: key);

  final TextEditingController namaoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFE4DFB6),
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Settings Profile",
                  style: TextStyle(
                    color: Color(0XFF7F2121),
                    fontSize: 22,
                    fontFamily: 'Rambla',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                _buildIconRow(),
                const SizedBox(height: 20),
                _buildProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Membuat AppBar dengan ikon di kiri.
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 32,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: SvgPicture.asset(
          "assets/images/img_color.svg",
          height: 20,
          width: 12,
        ),
      ),
    );
  }

  /// Membuat baris ikon profil.
  Widget _buildIconRow() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: const Color(0XFF7F2121),
        borderRadius: BorderRadius.circular(62),
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SvgPicture.asset(
              "assets/images/img_icon.svg",
              height: 54,
              width: 76,
            ),
          ),
          const SizedBox(width: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hello\nINTAN 1111111",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontSize: 22,
                fontFamily: 'Rambla',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Image.asset(
              "assets/images/img_berry_s_1.png",
              height: 78,
              width: 144,
            ),
          ),
        ],
      ),
    );
  }

  /// Membuat form input untuk nama dan email.
  Widget _buildProfileForm() {
    return Column(
      children: [
        const SizedBox(height: 34),
        _buildTextField(namaoneController, "Nama"),
        const SizedBox(height: 34),
        _buildTextField(emailController, "Email"),
        const SizedBox(height: 52),
        _buildSaveButton(),
      ],
    );
  }

  /// Membuat TextField yang dapat digunakan kembali.
  Widget _buildTextField(TextEditingController controller, String hint) {
    return SizedBox(
      width: 270,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 22,
          fontFamily: 'Rambla',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 22,
            fontFamily: 'Rambla',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0XFF7F2121),
          contentPadding: const EdgeInsets.fromLTRB(28, 10, 28, 4),
        ),
      ),
    );
  }

  /// Membuat tombol Save.
  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0XFF7F2121),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: () {
          // Tambahkan logika untuk menyimpan data profil di sini.
          // Misalnya, Anda bisa memvalidasi input atau menyimpan data ke database.
          print("Nama: ${namaoneController.text}");
          print("Email: ${emailController.text}");
        },
        child: const Text(
          "Save",
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 22,
            fontFamily: 'Rambla',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
