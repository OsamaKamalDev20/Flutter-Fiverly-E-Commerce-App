import 'package:cricket_app/E%20Commerce%20App/pages/navigations/eCommerce_bottom_navigationbar.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class SuccessScreen2 extends StatelessWidget {
  const SuccessScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 130),
          Center(
            child: Container(
              width: width * 4,
              height: height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/eCommerceApp/successBackgroundImage-2.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 49.0),
          Text(
            "Success!",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w700,
              fontSize: 34,
              height: 1,
              color: text2,
            ),
          ),
          SizedBox(height: 12.0),
          Text(
            "Your order will be delivered soon. \nThank you for choosing our app!",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.normal,
              fontSize: 16,
              height: 1.5,
              color: text2,
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              title: "CONTINUE SHOPPING",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ECommerceBottomNavigationBar(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
