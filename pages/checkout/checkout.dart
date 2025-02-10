import 'package:cricket_app/E%20Commerce%20App/pages/payment%20method/payment_card_method.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/shipping%20address/shipping_address.dart';
// import 'package:cricket_app/E%20Commerce%20App/pages/sucess/success_1_screen.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/sucess/success_2_screen.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
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
        title: Text("Checkout", style: headline3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping address",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: text1,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 21),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShippingAddress(),
                      ),
                    );
                  },
                  child: Container(
                    height: 108,
                    padding: EdgeInsets.only(left: 28, top: 18, right: 23),
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
                              "Jane Doe",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 2,
                                color: text1,
                              ),
                            ),
                            Text(
                              "Change",
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
                          "3 Newbridge Court \nChino Hills, CA 91709, United States",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            height: 1.5,
                            color: text1,
                            letterSpacing: -0.15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: text1,
                        height: 1.6,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentCardMethod(),
                          ),
                        );
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 2,
                          color: cardText3,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 38,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                      decoration: BoxDecoration(
                        color: textField,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(.08),
                            blurRadius: 25,
                            spreadRadius: 0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/eCommerceApp/mastercard.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 17),
                    Text(
                      "**** **** **** 3947",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        height: 1.5,
                        color: text1,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Text(
                  "Delivery method",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: text1,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    deliveryMetod("assets/eCommerceApp/fedex.png"),
                    deliveryMetod("assets/eCommerceApp/usps.png"),
                    deliveryMetod("assets/eCommerceApp/dhl.png"),
                  ],
                ),
                SizedBox(height: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    productSummary("Order:", "\$112"),
                    SizedBox(height: 14),
                    productSummary("Delivery::", "\$15"),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Summary:",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            height: 1.6,
                            color: textFieldText1,
                          ),
                        ),
                        Text(
                          "\$127",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            height: 2.2,
                            color: text1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SafeArea(
              child: CustomButton(
                title: "SUBMIT ORDER",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SuccessScreen2(), // success screen 1 or success screen 2
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget deliveryMetod(String image) {
    return Container(
      width: 100,
      height: 72,
      decoration: BoxDecoration(
        color: textField,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: textFieldShadow.withOpacity(.08),
            blurRadius: 25,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 11),
          Text(
            " 2-3 days",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.normal,
              fontSize: 11,
              color: textFieldText1,
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }

  Widget productSummary(String title, subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 2,
            color: textFieldText1,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.6,
            color: text1,
          ),
        ),
      ],
    );
  }
}
