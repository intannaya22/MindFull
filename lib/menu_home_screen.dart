import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu_settings_profile_screen.dart'; // Import the actual MenuSettingsProfileScreen widget
import 'menu_share_story_screen.dart'; // Import the ShareStoryScreen widget

class MenuHomeScreen extends StatelessWidget {
  const MenuHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFE4DFB6),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Text(
                    "HOME",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 22,
                      fontFamily: 'Rambla',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(height: 50),
                  _buildShareStoryRow(context),
                  const SizedBox(height: 44),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 30,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true, // Menampilkan tombol back
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context); // Menggunakan Navigator.pop untuk kembali
        },
      ),
    );
  }

  Widget _buildShareStoryRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildShareStoryButton(context),
        ),
        const SizedBox(width: 22),
        Expanded(
          child: _buildSettingsProfileButton(context),
        ),
      ],
    );
  }

  Widget _buildShareStoryButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuShareStoryScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFF7F2121),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Share Story",
                  style: TextStyle(
                    color: Color(0XFF7F2121),
                    fontSize: 22,
                    fontFamily: 'Rambla',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 78,
              width: 100,
              child: SvgPicture.asset("assets/images/img_icon_78x98.svg"),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsProfileButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuSettingsProfileScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFF7F2121),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Settings Profile",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF7F2121),
                    fontSize: 22,
                    fontFamily: 'Rambla',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 78,
              width: 100,
              child: SvgPicture.asset("assets/images/img_icon.svg"),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
