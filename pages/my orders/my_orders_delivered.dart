import 'package:cricket_app/E%20Commerce%20App/pages/my%20orders/my_orders_details.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyOrdersDelivered extends StatelessWidget {
  const MyOrdersDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              3,
              (index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 19),
                margin: EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: textField,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 34,
                      offset: Offset(0, 1),
                      color: textFieldShadow.withOpacity(
                        .12,
                      ),
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
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Quantity: ',
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: textFieldText1,
                                      height: 1.4,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "3",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: text1,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Total Amount: ',
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: textFieldText1,
                                      height: 1.4,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "112\$",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: text1,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, // This works now
                              MaterialPageRoute(
                                builder: (context) => MyOrdersDetails(),
                              ),
                            );
                          },
                          child: Container(
                            height: 36,
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: text1, width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "Details",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  height: 1.4,
                                  color: text1,
                                ),
                              ),
                            ),
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
