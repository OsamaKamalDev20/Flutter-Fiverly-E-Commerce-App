import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // List of switch labels
  final List<String> switchLabels = [
    "Sales",
    "New Arrival",
    "Delivery Status Changes"
  ];

  // List of switch states (true = ON, false = OFF)
  List<bool> isSwitched = [true, false, false];

  // List of active colors for each switch when turned on
  final List<Color> activeColors = [
    switchActive1,
    switchActive2,
    switchActive2
  ];

  final TextEditingController nameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor,
                ),
              ),
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 24,
                                  color: text1,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search_sharp,
                                  size: 24,
                                  color: text1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 15),
                            child: Text(
                              "Settings",
                              style: headline1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23),
              Text(
                "Personal Information",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: text1,
                  height: 1,
                ),
              ),
              SizedBox(height: 21),
              Container(
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: textField,
                  boxShadow: [
                    BoxShadow(
                      color: textFieldShadow.withOpacity(0.05),
                      blurRadius: 8.0,
                      offset: Offset(0.0, 1.0),
                    ),
                  ],
                ),
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: text1,
                    height: 1.4,
                  ),
                  decoration: InputDecoration(
                    hintText: "Full name",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: textFieldText1,
                      height: 1.5,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: textField,
                  boxShadow: [
                    BoxShadow(
                      color: textFieldShadow.withOpacity(0.05), //New
                      blurRadius: 8.0,
                      offset: Offset(0.0, 1.0),
                    ),
                  ],
                ),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: text1,
                    height: 1.4,
                  ),
                  decoration: InputDecoration(
                    fillColor: textField,
                    filled: true,
                    hintText: "12/12/1989",
                    hintStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      height: 1.5,
                      color: text1,
                    ),
                    labelText: "Date of Birth",
                    labelStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: textFieldText1,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 54),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: text1,
                      height: 1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: bgColor,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(34),
                            topRight: Radius.circular(34),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 26),
                                Text(
                                  "Password Change",
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: text1,
                                    height: 2.2,
                                  ),
                                ),
                                SizedBox(height: 18),
                                passwordRecovery("Old Password"),
                                SizedBox(height: 14),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Forgot Password?  ",
                                      style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: textFieldText1,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 18),
                                passwordRecovery("New Password"),
                                SizedBox(height: 18),
                                passwordRecovery("Repeat New Password"),
                                SizedBox(height: 32),
                                CustomButton(
                                  title: "SAVE PASSWORD",
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(height: 22),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        color: textFieldText1,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21),
              Container(
                padding: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: textField,
                  boxShadow: [
                    BoxShadow(
                      color: textFieldShadow.withOpacity(0.05), //New
                      blurRadius: 8.0,
                      offset: Offset(0.0, 1.0),
                    ),
                  ],
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: text1,
                    height: 1.4,
                  ),
                  decoration: InputDecoration(
                    fillColor: textField,
                    filled: true,
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: textFieldText1,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 55),
              Text(
                "Notifications",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: text1,
                  height: 1,
                ),
              ),
              SizedBox(height: 23),
              SafeArea(
                child: Column(
                  children: List.generate(switchLabels.length, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          switchLabels[index],
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.4,
                            color: text1,
                          ),
                        ),
                        Switch(
                          value: isSwitched[index],
                          activeColor: activeColors[index],
                          inactiveThumbColor: switchActive2,
                          activeTrackColor: textFieldText1.withOpacity(.1),
                          inactiveTrackColor: bgColor.withOpacity(.1),
                          onChanged: (value) {
                            setState(
                              () {
                                isSwitched[index] = value;
                              },
                            );
                          },
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget passwordRecovery(String hintText) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: textField,
        boxShadow: [
          BoxShadow(
            color: textFieldShadow.withOpacity(0.05),
            blurRadius: 8.0,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      child: TextField(
        controller: nameController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: text1,
          height: 1.4,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: textFieldText1,
            height: 1.5,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
