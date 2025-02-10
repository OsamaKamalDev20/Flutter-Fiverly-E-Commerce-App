import 'package:cricket_app/E%20Commerce%20App/pages/navigations/eCommerce_bottom_navigationbar.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SuccessScreen1 extends StatefulWidget {
  const SuccessScreen1({super.key});

  @override
  State<SuccessScreen1> createState() => _SuccessScreen1State();
}

class _SuccessScreen1State extends State<SuccessScreen1> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/eCommerceApp/successBackgroundImage-1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 80.0),
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
                SizedBox(height: 16.0),
                Text(
                  "Your order will be delivered soon. \nThank you for choosing our app!",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 1.5,
                    color: text2,
                  ),
                ),
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ECommerceBottomNavigationBar(),
                      ),
                    );
                  },
                  child: Container(
                    height: 36,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: cardText3,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          offset: Offset(0, 4),
                          color: buttonShadow.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Continue shopping",
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          height: 2,
                          color: textField,
                        ),
                      ),
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
}
