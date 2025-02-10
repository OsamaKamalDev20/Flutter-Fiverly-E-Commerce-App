import 'package:cricket_app/E%20Commerce%20App/pages/auth/forget_password_page.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../navigations/eCommerce_bottom_navigationbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
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
            padding: EdgeInsets.only(left: 15, right: 15, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login", style: headline1),
                SizedBox(height: 73),
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
                        borderSide: BorderSide(
                          width: 1,
                          color: textFieldError,
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: textFieldText1,
                      ),
                      suffixIcon: Icon(
                        Icons.check_sharp,
                        color: iconColor3,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
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
                    obscuringCharacter: "*",
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,
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
                        borderSide: BorderSide(
                          width: 1,
                          color: textFieldError,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textFieldText1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 2,
                        color: text1,
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: const Duration(seconds: 1),
                            child: ForgetPasswordPage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_right_alt_sharp,
                        color: iconColor1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                CustomButton(
                  title: "LOGIN",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ECommerceBottomNavigationBar(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 140),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or login with social account",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                      color: text1,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton("assets/eCommerceApp/google.png"),
                    SizedBox(width: 16),
                    _buildSocialButton("assets/eCommerceApp/facebook.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String image) {
    return Container(
      width: 92,
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 34, vertical: 20),
      decoration: BoxDecoration(
        color: textField,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: textFieldShadow.withOpacity(.05),
            blurRadius: 8,
            spreadRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
