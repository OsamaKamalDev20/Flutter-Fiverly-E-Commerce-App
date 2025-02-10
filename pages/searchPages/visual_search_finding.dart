import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class VisualSearchFindingPage extends StatelessWidget {
  const VisualSearchFindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(height: height * 0.38),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: iconColor1, size: 45),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.0),
              Center(
                child: Text(
                  'Finding similar \nresults...',
                  textAlign: TextAlign.center,
                  style: headline1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
