import 'package:cricket_app/E%20Commerce%20App/models/myBag_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/checkout/checkout.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';

class ShoppingBagScreen extends StatefulWidget {
  const ShoppingBagScreen({super.key});

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
                size: 24,
                color: text1,
              ),
            ),
          ],
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
              Padding(
                padding: EdgeInsets.only(left: 14, right: 15, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Bag", style: headline1),
                    // SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: bagsCard.length,
                itemBuilder: ((context, index) {
                  final bag = bagsCard[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 24),
                    height: 116,
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
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              child: Image.asset(
                                bag.image,
                                fit: BoxFit.cover,
                                width: 104,
                                height: 116,
                              ),
                            ),
                            SizedBox(width: 11),
                            Padding(
                              padding: const EdgeInsets.only(top: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${bag.name}",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: text1,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
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
                                              text: "${bag.colorValue}",
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
                                          style: DefaultTextStyle.of(context)
                                              .style,
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
                                              text: "${bag.sizeValue}",
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
                                  SizedBox(height: 14),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          _quantityButton(
                                            Icons.remove,
                                            () {
                                              setState(() {
                                                quantity--;
                                              });
                                            },
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            quantity.toString(),
                                            style: description,
                                          ),
                                          SizedBox(width: 16),
                                          _quantityButton(
                                            Icons.add,
                                            () {
                                              setState(() {
                                                quantity++;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 60),
                                      Text(
                                        "\$${bag.price.toString()}",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          height: 2,
                                          color: text1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_rounded,
                              size: 24,
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: textField,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: textField,
                        filled: true,
                        hintText: "Enter your promo code",
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: textFieldText1,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showPromoCodesOptions(context);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: text1,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: textField,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total amount:",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 2,
                    color: textFieldText1,
                  ),
                ),
                Text(
                  "\$124",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 2.2,
                    color: text1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            CustomButton(
              title: "CHECK OUT",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOutScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _quantityButton(final IconData icon, final VoidCallback onPressed) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: textField,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 0,
            offset: Offset(0, 4),
            color: textFieldShadow.withOpacity(.1),
          ),
        ],
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: textFieldText1, size: 20),
        ),
      ),
    );
  }

  void showPromoCodesOptions(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: textField,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: textField,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                          bottomLeft: Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: textFieldShadow.withOpacity(0.05),
                            blurRadius: 8,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: TextField(
                        cursorColor: text1,
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: textFieldText1,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: text1,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: textField,
                            ),
                          ),
                          fillColor: textField,
                          filled: true,
                          hintText: "Enter your promo code",
                          hintStyle: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: textFieldText1,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      "Your Promo Codes",
                      style: headline3,
                    ),
                    SizedBox(height: 18),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      height: 80,
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
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      promo1,
                                      promo2,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 34,
                                          color: textField,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "%",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                          Text(
                                            "off",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Padding(
                                padding: const EdgeInsets.only(top: 11),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Personal offer",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            height: 2,
                                            color: text2,
                                          ),
                                        ),
                                        Text(
                                          "mypromocode2020",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: text1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    applyButton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Positioned(
                            top: 12,
                            right: 15,
                            child: Text(
                              "6 days remaining",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: textFieldText1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      height: 80,
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
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/eCommerceApp/image-31.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "15",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 34,
                                          color: textField,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "%",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                          Text(
                                            "off",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Padding(
                                padding: const EdgeInsets.only(top: 11),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Summer Sale",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            height: 2,
                                            color: text2,
                                          ),
                                        ),
                                        Text(
                                          "summer2020",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: text1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 40),
                                    applyButton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Positioned(
                            top: 12,
                            right: 15,
                            child: Text(
                              "23 days remaining",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: textFieldText1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      height: 80,
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
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      promo3,
                                      promo4,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "22",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 34,
                                          color: textField,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "%",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                          Text(
                                            "off",
                                            style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontWeight: FontWeight.w700,
                                              color: textField,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 14),
                              Padding(
                                padding: const EdgeInsets.only(top: 11),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Personal offer",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            height: 2,
                                            color: text2,
                                          ),
                                        ),
                                        Text(
                                          "mypromocode2020",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: text1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    applyButton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Positioned(
                            top: 12,
                            right: 15,
                            child: Text(
                              "6 days remaining",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: textFieldText1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget applyButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 36,
        width: 93,
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
            "Apply",
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
