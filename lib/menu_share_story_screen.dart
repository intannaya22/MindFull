import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuShareStoryScreen extends StatefulWidget {
  MenuShareStoryScreen({Key? key}) : super(key: key);

  @override
  _MenuShareStoryScreenState createState() => _MenuShareStoryScreenState();
}

class _MenuShareStoryScreenState extends State<MenuShareStoryScreen> {
  TextEditingController iyasilahkanController = TextEditingController();
  TextEditingController sendoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE4DFB6),
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Share Story",
                  style: TextStyle(
                    color: Color(0xFF7F2121),
                    fontSize: 22,
                    fontFamily: 'Rambla',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16), // Adjusted padding for better layout
                _buildRowIconOne(context),
                SizedBox(height: 36),
                _buildFormContainer(context),
                SizedBox(height: 44),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 56, // Adjusted to a better height for AppBar
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsets.only(left: 20),
        child: IconButton(
          icon: SvgPicture.asset("assets/images/img_color.svg", height: 24, width: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Widget _buildRowIconOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Color(0xFF7F2121),
        borderRadius: BorderRadius.circular(62),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: SvgPicture.asset(
              "assets/images/img_icon.svg",
              height: 54,
              width: 76,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16, top: 10),
              child: Text(
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
            padding: EdgeInsets.only(right: 10),
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

  Widget _buildFormContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 26),
      decoration: BoxDecoration(
        color: Color(0xFF7F2121),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHalloizin(context),
          SizedBox(height: 50),
          _buildIyasilahkan(context),
          SizedBox(height: 50),
          _buildSendone(context),
        ],
      ),
    );
  }

  Widget _buildHalloizin(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        ),
        onPressed: () {
          // Add functionality here
        },
        child: Text(
          "Hallo izin curhat",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Rambla',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildIyasilahkan(BuildContext context) {
    return TextFormField(
      controller: iyasilahkanController,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Rambla',
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: "Iya silahkan",
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSendone(BuildContext context) {
    return TextFormField(
      controller: sendoneController,
      style: TextStyle(
        color: Color(0xFF7F2121),
        fontSize: 18,
        fontFamily: 'Rambla',
        fontWeight: FontWeight.w400,
      ),
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: "Ketik Pesan...",
        filled: true,
        fillColor: Color(0xFFE4DFB6),
        contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            "assets/images/img_send.svg",
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }
}