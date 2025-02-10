import 'package:cricket_app/E%20Commerce%20App/pages/shipping%20address/add_shipping_address.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
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
        title: Text("Shipping Addresses", style: headline3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shippingAddress(
              "Jane Doe",
              "3 Newbridge Court \nChino Hills, CA 91709, United States",
              true,
            ),
            SizedBox(height: 24),
            shippingAddress(
              "John Doe",
              "3 Newbridge Court \nChino Hills, CA 91709, United States",
              false,
            ),
            SizedBox(height: 24),
            shippingAddress(
              "John Doe",
              "51 Riverside \nChino Hills, CA 91709, United States",
              false,
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddingShippingAddress(),
              ),
            );
          },
          backgroundColor: text1,
          child: const Icon(
            Icons.add,
            color: textField,
            size: 36,
            shadows: [
              Shadow(
                blurRadius: 4,
                offset: Offset(0, 4),
                color: textFieldShadow,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
        ),
      ),
    );
  }

  Widget shippingAddress(
    String name,
    String address,
    bool isChecked,
  ) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(
        left: 28,
        top: 18,
        right: 23,
      ),
      decoration: BoxDecoration(
        color: textField,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            offset: Offset(0, 1),
            color: textFieldShadow.withOpacity(.08),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 2,
                  color: text1,
                ),
              ),
              Text(
                "Edit",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 2,
                  color: cardText3,
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text(
            address,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.normal,
              fontSize: 14,
              height: 1.5,
              color: text1,
              letterSpacing: -0.15,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              isChecked == true
                  ? Icon(
                      Icons.check_box_rounded,
                      size: 30,
                      color: text1,
                    )
                  : Icon(
                      Icons.check_box_outline_blank_rounded,
                      size: 30,
                      color: textFieldText1,
                    ),
              SizedBox(width: 13),
              Text(
                "Use as the shipping address",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: text1,
                  height: 1.4,
                  letterSpacing: -0.41,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
