import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyOrdersDetails extends StatelessWidget {
  const MyOrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text("Order Details", style: headline3),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 24,
              color: text1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order №1947034",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: text1,
                      height: 1,
                    ),
                  ),
                  Text(
                    "05-12-2019",
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tracking number: ',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: textFieldText1,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: "IW3475453455",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: text1,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.4,
                      color: iconColor3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "3 items",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: text1,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 18),
              Column(
                children: [
                  myOrdersDetails("assets/eCommerceApp/image-32.png"),
                  myOrdersDetails("assets/eCommerceApp/image-30.png"),
                  myOrdersDetails("assets/eCommerceApp/image-25.png"),
                ],
              ),
              SizedBox(height: 34),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order information",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: text1,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping Address: ",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: textFieldText1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "3 Newbridge Court, Chino Hills,CA 91709, United States",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: text1,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment method: ",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: textFieldText1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Image.asset(
                              "assets/eCommerceApp/mastercard.png",
                              width: 32,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "**** **** **** 3947",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: text1,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery method: ",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: textFieldText1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "FedEx, 3 days, 15\$",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: text1,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery method: ",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: textFieldText1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "10%, Personal promo code",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: text1,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Amount: ",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 14,
                            color: textFieldText1,
                          ),
                        ),
                        SizedBox(width: 30),
                        Text(
                          "133\$",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: text1,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 34),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: _reorderButton(),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: _feedbackButton(),
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
    );
  }

  Widget myOrdersDetails(String image) {
    return Container(
      height: 104,
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: textField,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            spreadRadius: 0,
            offset: Offset(0, 1),
            color: textFieldShadow.withOpacity(.08),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 104,
              height: 104,
            ),
          ),
          SizedBox(width: 11),
          Padding(
            padding: EdgeInsets.only(top: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pullover",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: text1,
                  ),
                ),
                Text(
                  "Pullover",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: textFieldText1,
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Color: ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: textFieldText1,
                              letterSpacing: -0.15,
                            ),
                          ),
                          TextSpan(
                            text: "Gray",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.15,
                              fontSize: 11,
                              color: text1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Size: ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: textFieldText1,
                              letterSpacing: -0.15,
                            ),
                          ),
                          TextSpan(
                            text: "L",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.15,
                              fontSize: 11,
                              color: text1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Unit: ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: textFieldText1,
                              letterSpacing: -0.15,
                            ),
                          ),
                          TextSpan(
                            text: "1",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.15,
                              fontSize: 11,
                              color: text1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      "51\$",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.4,
                        color: text1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _reorderButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: button2, width: 1),
        ),
        child: Center(
          child: Text(
            "Reorder",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 2,
              color: button2,
            ),
          ),
        ),
      ),
    );
  }

  Widget _feedbackButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: button1,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: buttonShadow.withOpacity(.25),
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Leave Feedback",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 2,
              color: textField,
            ),
          ),
        ),
      ),
    );
  }
}
