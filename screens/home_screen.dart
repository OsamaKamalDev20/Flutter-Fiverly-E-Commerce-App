import 'package:cricket_app/E%20Commerce%20App/models/new_product_card.dart';
import 'package:cricket_app/E%20Commerce%20App/models/sales_product_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/product/product_card.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/eCommerceApp/image-8.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 126),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Street clothes",
                          style: TextStyle(
                            color: textField,
                            fontFamily: "Metropolis",
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // SALE CONTENT
              Padding(
                padding: EdgeInsets.only(left: 18, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sale",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            color: text1,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: text1,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Super summer sale",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 11,
                        color: textFieldText1,
                      ),
                    ),
                    SizedBox(height: 22),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          salesProducts.length,
                          (index) {
                            final salesItems = salesProducts[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 17),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductCardDetail(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          height: 210,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "${salesItems.image}",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        top: 177.31,
                                        child: Transform.translate(
                                          offset: Offset(2, 5),
                                          child: Container(
                                            height: 36,
                                            width: 36,
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: textField,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      text2.withOpacity(0.08),
                                                  blurRadius: 4,
                                                  spreadRadius: 0,
                                                  offset: Offset(0, 4),
                                                ),
                                              ],
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                print("Add to favorites");
                                              },
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                size: 24,
                                                color: Color(0xFFDADADA),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 9,
                                        left: 8,
                                        child: Container(
                                          width: 40,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(29),
                                            color: cardText3,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "${salesItems.label}",
                                              style: TextStyle(
                                                fontFamily: 'Metropolis',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: textField,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    width: 120,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RatingBar.builder(
                                          ignoreGestures: true,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemPadding:
                                              EdgeInsets.only(right: 1.5),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star_rate_rounded,
                                            color: iconColor5,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "(10)",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: textFieldText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Container(
                                    width: 120,
                                    child: Text(
                                      "${salesItems.brand}",
                                      style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        height: 1.1,
                                        color: textFieldText1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 120,
                                    child: Text(
                                      "${salesItems.name}",
                                      style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: text1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Container(
                                    width: 120,
                                    child: Row(
                                      children: [
                                        Text(
                                          "\$${salesItems.price}",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: textFieldText1,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: textFieldText1,
                                            decorationThickness: 1,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "\$${salesItems.discountPrice}",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: cardText3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // NEW CONTENT
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 18, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            color: text1,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: text1,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "You’ve never seen it before!",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 11,
                        color: textFieldText1,
                      ),
                    ),
                    SizedBox(height: 22),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          salesProducts.length,
                          (index) {
                            final newItems = newProducts[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 17),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductCardDetail(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          height: 210,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "${newItems.image}",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        top: 177.31,
                                        child: Transform.translate(
                                          offset: Offset(2, 5),
                                          child: Container(
                                            height: 36,
                                            width: 36,
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: textField,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      text2.withOpacity(0.08),
                                                  blurRadius: 4,
                                                  spreadRadius: 0,
                                                  offset: Offset(0, 4),
                                                ),
                                              ],
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                print("Add to favorites");
                                              },
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                size: 24,
                                                color: Color(0xFFDADADA),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 9,
                                        left: 8,
                                        child: Container(
                                          width: 40,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(29),
                                            color: text1,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "${newItems.label}",
                                              style: TextStyle(
                                                fontFamily: 'Metropolis',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: textField,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    width: 120,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RatingBar.builder(
                                          ignoreGestures: true,
                                          initialRating: 0,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemPadding:
                                              EdgeInsets.only(right: 1.5),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star_border_sharp,
                                            color: textFieldText1,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "(0)",
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: textFieldText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "${newItems.brand ?? ''}",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      height: 1.1,
                                      color: textFieldText1,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "${newItems.name ?? ''}",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: text1,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "\$${newItems.price ?? ''}",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: text1,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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
}
