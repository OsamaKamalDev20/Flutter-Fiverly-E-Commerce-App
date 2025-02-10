import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingReviewsPhotos extends StatefulWidget {
  const RatingReviewsPhotos({super.key});

  @override
  State<RatingReviewsPhotos> createState() => _RatingReviewsPhotosState();
}

class _RatingReviewsPhotosState extends State<RatingReviewsPhotos> {
  bool valueFirst = false;
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
        title: Text("Rating and reviews", style: headline3),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 21, top: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "8 reviews",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 2.2,
                        letterSpacing: -0.41,
                        color: text1,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check_box,
                            size: 20,
                            color: text1,
                          ),
                        ),
                        Text(
                          "With photo",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 2.1,
                            color: text1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 22),
                            decoration: BoxDecoration(
                              color: textField,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  offset: Offset(0, 1),
                                  color: textFieldShadow.withOpacity(0.05),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kim Shine",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: text1,
                                      height: 0.8,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RatingBar.builder(
                                        ignoreGestures: true,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 15,
                                        itemPadding: EdgeInsets.only(
                                          right: 1,
                                        ),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star_rate_rounded,
                                          color: iconColor5,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      Text(
                                        "August 13, 2019",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 11,
                                          color: textFieldText1,
                                          height: 0.8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 11),
                                  Text(
                                    "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 14,
                                      color: text1,
                                      height: 2.1,
                                      letterSpacing: -0.15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        reviewsImage(
                                          "assets/eCommerceApp/image-16.png",
                                        ),
                                        SizedBox(width: 16),
                                        reviewsImage(
                                          "assets/eCommerceApp/image-17.png",
                                        ),
                                        SizedBox(width: 16),
                                        reviewsImage(
                                          "assets/eCommerceApp/image-18.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Helpful",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 11,
                                          color: textFieldText1,
                                        ),
                                      ),
                                      SizedBox(width: 9),
                                      Icon(
                                        Icons.thumb_up,
                                        size: 24,
                                        color: Color(0xFFDADADA),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 8,
                            child: Transform.translate(
                              offset: Offset(-15, -15),
                              child: Container(
                                height: 32,
                                width: 32,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/eCommerceApp/image-14.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 22),
                            decoration: BoxDecoration(
                              color: textField,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  offset: Offset(0, 1),
                                  color: textFieldShadow.withOpacity(0.05),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Matilda Brown",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: text1,
                                      height: 0.8,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RatingBar.builder(
                                        ignoreGestures: true,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 15,
                                        itemPadding: EdgeInsets.only(
                                          right: 1,
                                        ),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star_rate_rounded,
                                          color: iconColor5,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      Text(
                                        "August 14, 2019",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 11,
                                          color: textFieldText1,
                                          height: 0.8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 11),
                                  Text(
                                    "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 14,
                                      color: text1,
                                      height: 2.1,
                                      letterSpacing: -0.15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        reviewsImage(
                                          "assets/eCommerceApp/image-16.png",
                                        ),
                                        SizedBox(width: 16),
                                        reviewsImage(
                                          "assets/eCommerceApp/image-17.png",
                                        ),
                                        SizedBox(width: 16),
                                        reviewsImage(
                                          "assets/eCommerceApp/image-18.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Helpful",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 11,
                                          color: textFieldText1,
                                        ),
                                      ),
                                      SizedBox(width: 9),
                                      Icon(
                                        Icons.thumb_up,
                                        size: 24,
                                        color: Color(0xFFDADADA),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 8,
                            child: Transform.translate(
                              offset: Offset(-15, -15),
                              child: Container(
                                height: 32,
                                width: 32,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/eCommerceApp/image-15.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
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
              return StatefulBuilder(
                builder: (context, setState) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "What is you rate?",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: text1,
                            height: 2.2,
                          ),
                        ),
                        SizedBox(height: 17),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 2,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 34,
                          itemBuilder: (context, _) => Icon(
                            Icons.star_rate_rounded,
                            size: 34,
                            color: iconColor5,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(height: 33),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Center(
                            child: const Text(
                              "Please share your opinion about the product",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: text1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 33),
                        Container(
                          decoration: BoxDecoration(
                            color: textField,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8,
                                offset: Offset(0, 1),
                                color: textFieldShadow.withOpacity(0.05),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          child: Text(
                            "I’m super happy with these! I’ve never bought jeans online before and I didn’t think they’d even fit, but it turns out they fit pretty perfectly. I got a size 28- I’m 5’6” and weigh about 127 lbs. They are tight but not suffocating ...",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 14,
                              color: text1,
                              height: 2.1,
                              letterSpacing: -0.15,
                            ),
                          ),
                          // child: TextField(
                          //   minLines: 1,
                          //   maxLines: 10,
                          //   decoration: InputDecoration(
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(4),
                          //       borderSide: BorderSide.none,
                          //     ),
                          //     hintText: 'Your review',
                          //     hintStyle: TextStyle(
                          //       fontFamily: 'Metropolis',
                          //       fontSize: 14,
                          //       color: textFieldText1,
                          //       height: 2.1,
                          //       letterSpacing: -0.15,
                          //     ),
                          //   ),
                          // ),
                        ),
                        SizedBox(height: 45),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              reviewsImage(
                                "assets/eCommerceApp/image-16.png",
                              ),
                              SizedBox(width: 16),
                              reviewsImage(
                                "assets/eCommerceApp/image-17.png",
                              ),
                              SizedBox(width: 16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print("Take Photos");
                                    },
                                    child: Container(
                                      width: 52,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: cardText3,
                                      ),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: textField,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Add your photos',
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color: text1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35),
                        CustomButton(
                          title: "SEND REVIEW",
                          onPressed: () {},
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
        backgroundColor: cardText3,
        icon: const Icon(
          Icons.edit,
          color: textField,
        ),
        label: const Text(
          "Write a review",
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: textField,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  Widget reviewsImage(String image) {
    return Container(
      height: 104,
      width: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
