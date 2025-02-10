import 'package:cricket_app/E%20Commerce%20App/pages/sucess/success_1_screen.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class AddingShippingAddress extends StatefulWidget {
  const AddingShippingAddress({super.key});

  @override
  State<AddingShippingAddress> createState() => _AddingShippingAddressState();
}

class _AddingShippingAddressState extends State<AddingShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        shadowColor: textFieldShadow.withOpacity(.08),
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
        title: Text("Adding Shipping Address", style: headline3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
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
              SizedBox(height: 20),
              addshiipingAddress(
                "3 Newbridge Court",
                "Address",
                null,
              ),
              SizedBox(height: 20),
              addshiipingAddress(
                "Chino Hills",
                "City",
                null,
              ),
              SizedBox(height: 20),
              addshiipingAddress(
                "California",
                "State/Province/Region",
                null,
              ),
              SizedBox(height: 20),
              addshiipingAddress(
                "91709",
                "Zip Code (Postal Code)",
                null,
              ),
              SizedBox(height: 20),
              addshiipingAddress(
                "United States",
                "Country",
                Icons.arrow_forward_ios_sharp,
              ),
              SizedBox(height: 40),
              CustomButton(
                title: "Save Address",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SuccessScreen1(), // success screen 1 ya success screen 2
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addshiipingAddress(
    final String hintText,
    final String labelText,
    final IconData? suffixIcon,
  ) {
    return Container(
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
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.normal,
            fontSize: 14,
            height: 1.5,
            color: text1,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.normal,
            fontSize: 11,
            color: textFieldText1,
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: text1,
                  size: 15,
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
