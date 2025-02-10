import 'package:cricket_app/E%20Commerce%20App/models/product_details_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/rating%20reviews/rating_reviews.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCardDetail extends StatefulWidget {
  const ProductCardDetail({super.key});

  @override
  State<ProductCardDetail> createState() => _ProductCardDetailState();
}

class _ProductCardDetailState extends State<ProductCardDetail> {
  final List<String> sizes = ["XS", "S", "M", "L", "XL"];
  String? selectedSize;

  List productOptions = [
    "Item details",
    "Shipping info",
    "Support",
  ];
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
        title: Text("Short dress", style: headline3),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_rounded,
              size: 24,
              color: text1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 413,
                    child: Image.asset(
                      "assets/eCommerceApp/image-11.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    height: 413,
                    child: Image.asset(
                      "assets/eCommerceApp/image-12.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 138,
                    height: 40,
                    decoration: BoxDecoration(
                      color: textField,
                      border: Border.all(
                        width: 0.4,
                        color: textFieldError,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Size",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 2,
                              color: text1,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showSelectedSizeOptions(context);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 14,
                            color: text2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 138,
                    height: 40,
                    decoration: BoxDecoration(
                      color: textField,
                      border: Border.all(
                        width: 0.4,
                        color: textFieldText1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Black",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 2,
                              color: text1,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 14,
                            color: text2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: textField,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                          color: textFieldShadow.withOpacity(.1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.heart,
                          color: Color(0xffDADADA),
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "H&M",
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: text1,
                        ),
                      ),
                      Text(
                        "\$19.99",
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: text1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Short black dress",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: textFieldText1,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RatingReviews(),
                        ),
                      );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          RatingBar.builder(
                            ignoreGestures: true,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.only(right: 1),
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
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2.1,
                      letterSpacing: -0.15,
                      color: text1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomAppBar(
                    color: textField,
                    shadowColor: textFieldShadow.withOpacity(.1),
                    child: CustomButton(
                      title: "ADD TO CART",
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        productOptions.length,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productOptions[index],
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: text1,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 14,
                                  color: text1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("You can also like this",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  height: 2.2,
                                  color: text1,
                                )),
                            Text(
                              "12 items",
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 11,
                                color: textFieldText1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              productCard.length,
                              (index) {
                                final productCardItems = productCard[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: 150,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "${productCardItems.image}",
                                                ),
                                                fit: BoxFit.cover,
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
                                                      color: text2
                                                          .withOpacity(0.08),
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
                                          if (productCardItems.label != null)
                                            Positioned(
                                              top: 8,
                                              left: 9,
                                              child: Container(
                                                height: 24,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8, vertical: 4),
                                                decoration: BoxDecoration(
                                                  color: _getLabelColor(
                                                      productCardItems.label!),
                                                  borderRadius:
                                                      BorderRadius.circular(29),
                                                ),
                                                child: Text(
                                                  productCardItems.label!,
                                                  style: TextStyle(
                                                    fontFamily: 'Metropolis',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: textField,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      SizedBox(height: 7),
                                      if (productCardItems.rating != null)
                                        Row(
                                          children: [
                                            ...List.generate(
                                              5,
                                              (starIndex) => Icon(
                                                starIndex <
                                                        productCardItems.rating!
                                                    ? Icons.star_rate_rounded
                                                    : Icons.star_rate_outlined,
                                                color: starIndex <
                                                        productCardItems.rating!
                                                    ? iconColor5
                                                    : iconColor2,
                                                size: 16,
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            if (productCardItems.reviews !=
                                                null)
                                              Text(
                                                "(${productCardItems.reviews})",
                                                style: TextStyle(
                                                  fontFamily: 'Metropolis',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  height: 0.8,
                                                  color: textFieldText1,
                                                ),
                                              ),
                                          ],
                                        ),
                                      SizedBox(height: 6),
                                      Text(
                                        "${productCardItems.brand}",
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
                                        "${productCardItems.name}",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: text1,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          if (productCardItems.discountPrice !=
                                              null) ...[
                                            Text(
                                              "\$${productCardItems.price}",
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: cardText1,
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            Text(
                                              "\$${productCardItems.discountPrice}",
                                              style: TextStyle(
                                                fontFamily: 'Metropolis',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: cardText3,
                                              ),
                                            ),
                                          ] else
                                            Text(
                                              "\$${productCardItems.price}",
                                              style: const TextStyle(
                                                fontFamily: 'Metropolis',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: cardText2,
                                              ),
                                            ),
                                        ],
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
          ],
        ),
      ),
    );
  }

  void showSelectedSizeOptions(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white, // Replace with your `bgColor`
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36),
                Center(
                  child: const Text(
                    "Select size",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: text2,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 16,
                    spacing: 14,
                    children: List.generate(
                      sizes.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            setModalState(() {
                              selectedSize = sizes[index];
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: selectedSize == sizes[index]
                                  ? cardText3 // Highlight selected size
                                  : textField, // Replace with your `textField`
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.4,
                                color: selectedSize == sizes[index]
                                    ? Colors.transparent
                                    : textFieldText1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                sizes[index],
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: selectedSize == sizes[index]
                                      ? textField // Text color for selected size
                                      : text1, // Replace with your `text1`
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.6,
                          color: text1,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the bottom sheet
                          if (selectedSize != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Selected Size: $selectedSize",
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                backgroundColor: iconColor3,
                              ),
                            );
                          }
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: text1,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 43),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButton(
                    title: "ADD TO CART",
                    onPressed: () {
                      print("Product added to cart");
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Color _getLabelColor(String label) {
    if (label.contains("NEW")) {
      return text1;
    } else if (label.contains("-")) {
      return cardText3;
    } else {
      return Colors.transparent;
    }
  }
}
