import 'package:cricket_app/E%20Commerce%20App/pages/my%20orders/my_orders_delivered.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int buttonIndex = 0;

  final _myOrdersWidgets = [
    MyOrdersDelivered(),
    Container(),
    Container(),
  ];
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
                            child: Text("My Orders", style: headline1),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          buttonIndex = 0;
                        },
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                        color: buttonIndex == 0 ? text1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Text(
                        "Delivered",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: buttonIndex == 0 ? textField : text1,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          buttonIndex = 1;
                        },
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                        color: buttonIndex == 1 ? text1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Text(
                        "Processing",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: buttonIndex == 1 ? textField : text1,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                        color: buttonIndex == 2 ? text1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Text(
                        "Cancelled",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: buttonIndex == 2 ? textField : text1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: _myOrdersWidgets[buttonIndex],
          ),
        ],
      ),
    );
  }
}
