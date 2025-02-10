import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_buttons.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: text1,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 17, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Forgot password", style: headline1),
                SizedBox(height: 87),
                Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                    color: text1,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: textField,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: Offset(0, 1),
                        color: textFieldShadow.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: emailController,
                    cursorColor: textFieldText2,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textFieldText2,
                      height: 2,
                    ),
                    decoration: InputDecoration(
                      fillColor: textField,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(width: 1, color: textFieldError),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: textFieldError,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          emailController.clear();
                        },
                        icon: Icon(
                          Icons.close_sharp,
                          color: textFieldError,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Center(
                  child: Text(
                    "Not a valid email address. Should be your@email.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      height: 1.1,
                      color: textFieldError,
                    ),
                  ),
                ),
                SizedBox(height: 55),
                CustomButton(
                  title: "SEND",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
