import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_started/menu_home_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nipNisnInputController = TextEditingController();
  final TextEditingController nameInputController = TextEditingController();
  final TextEditingController emailInputController = TextEditingController();

  @override
  void dispose() {
    nipNisnInputController.dispose();
    nameInputController.dispose();
    emailInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFE4DFB6),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 20),
              _buildHeaderSection(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 14),
                        _buildNipNisnInput(context),
                        const SizedBox(height: 24),
                        _buildNameInput(context),
                        const SizedBox(height: 24),
                        _buildEmailInput(context),
                        const SizedBox(height: 62),
                        _buildRegisterButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      height: 254,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                "assets/images/img_berry_s_1.png",
                height: 242,
                width: 310,
              ),
            ),
          ),
          const Text(
            "Register",
            style: TextStyle(
              color: Color(0XFF7F2121),
              fontSize: 22,
              fontFamily: 'Rambla',
              fontWeight: FontWeight.w400,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: AppBar(
              elevation: 0,
              toolbarHeight: 40,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: SvgPicture.asset(
                  "assets/images/img_android_icon.svg",
                  height: 40,
                  width: 40,
                ),
                onPressed: () {
                  // Navigate back to the Get Started screen
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNipNisnInput(BuildContext context) {
    return _buildInputField(
      controller: nipNisnInputController,
      hintText: "NIP/NISN",
    );
  }

  Widget _buildNameInput(BuildContext context) {
    return _buildInputField(
      controller: nameInputController,
      hintText: "Nama",
    );
  }

  Widget _buildEmailInput(BuildContext context) {
    return _buildInputField(
      controller: emailInputController,
      hintText: "Email",
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String hintText,
    TextInputAction textInputAction = TextInputAction.next,
  }) {
    return SizedBox(
      width: 272,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 22,
          fontFamily: 'Rambla',
          fontWeight: FontWeight.w400,
        ),
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 22,
            fontFamily: 'Rambla',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: _inputBorder(),
          focusedBorder: _inputBorder(),
          disabledBorder: _inputBorder(),
          border: _inputBorder(),
          filled: true,
          fillColor: const Color(0XFF7F2121),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 6,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: BorderSide.none,
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0XFF7F2121),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 4,
          ),
        ),
        onPressed: () {
          // Navigate to the next screen after registration
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuHomeScreen()), // Replace with your next screen
          );
        },
        child: const Text(
          "Register",
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