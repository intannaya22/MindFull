import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuGuruScreen extends StatelessWidget {
  const MenuGuruScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFE4DFB6),
        appBar: _buildAppBarSection(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text(
                "Share Story",
                style: TextStyle(
                  color: Color(0XFF7F2121),
                  fontSize: 22,
                  fontFamily: 'Rambla',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              _buildIconRowSection(),
              const SizedBox(height: 84),
              _buildButton(context, "ROSSA, S.Pd."),
              const SizedBox(height: 86),
              _buildButton(context, "ADITYA, M.Pd."),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBarSection() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 34,
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

  Widget _buildIconRowSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: const Color(0XFF7F2121),
        borderRadius: BorderRadius.circular(62),
      ),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 114,
              margin: const EdgeInsets.only(left: 20, bottom: 10),
              child: const Text(
                "Hello\nINTAN 1111111",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Rambla',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
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

  Widget _buildButton(BuildContext context, String title) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 66),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0XFFD6B16D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        ),
        onPressed: () {
          // Tambahkan logika onPressed di sini
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0XFF7F2121),
            fontSize: 22,
            fontFamily: 'Rambla',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
