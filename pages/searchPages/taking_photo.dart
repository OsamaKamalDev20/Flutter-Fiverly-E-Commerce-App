import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class TakingPhotosPage extends StatelessWidget {
  const TakingPhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: text1,
          ),
        ),
        title: Text("Search by taking a photo", style: headline3),
      ),
      body: Column(
        children: [
          Container(
            width: width,
            height: height * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/eCommerceApp/image-2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.flash_on_sharp,
                      color: text1,
                    ),
                  ),
                  SizedBox(width: 40),
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: iconColor1,
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Icon(
                      Icons.camera_alt_sharp,
                      color: textField,
                    ),
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.autorenew_sharp,
                      color: text1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
