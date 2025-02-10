import 'package:cricket_app/E%20Commerce%20App/pages/rating%20reviews/rating_reviews_photos.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/rating_progress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingReviews extends StatefulWidget {
  const RatingReviews({super.key});

  @override
  State<RatingReviews> createState() => _RatingReviewsState();
}

class _RatingReviewsState extends State<RatingReviews> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: text1,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rating&Reviews", style: headline1),
                SizedBox(height: 41),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w700,
                            fontSize: 41,
                            height: 2.2,
                            letterSpacing: -0.41,
                            color: text1,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "23 ratings",
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 0.8,
                            color: textFieldText1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      flex: 11,
                      child: Column(
                        children: [
                          RatingProgressReviews(
                              noOfStars: 5, text: "12", value: 1.0),
                          const SizedBox(height: 8),
                          RatingProgressReviews(
                              noOfStars: 4, text: "5", value: 0.8),
                          const SizedBox(height: 8),
                          RatingProgressReviews(
                              noOfStars: 3, text: "4", value: 0.6),
                          const SizedBox(height: 8),
                          RatingProgressReviews(
                              noOfStars: 2, text: "2", value: 0.4),
                          const SizedBox(height: 8),
                          RatingProgressReviews(
                              noOfStars: 1, text: "0", value: 0.20),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 33),
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
                        Checkbox(
                          checkColor: textField,
                          activeColor: text1,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                            // Navigate to another screen when the checkbox is checked
                            if (_isChecked) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingReviewsPhotos(),
                                ),
                              );
                            }
                          },
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
                SizedBox(height: 44),
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
                                    "Helene Moore",
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
                                        "June 5, 2019",
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
                                    "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 14,
                                      color: text1,
                                      height: 2.1,
                                      letterSpacing: -0.15,
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
                                      "assets/eCommerceApp/image-13.png",
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
                                    "Kate Doe",
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
                                        itemPadding: EdgeInsets.only(right: 1),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star_rate_rounded,
                                          color: iconColor5,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      Text(
                                        "June 5, 2019",
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
                                    "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well. Plus, I love the pockets!.",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 14,
                                      color: text1,
                                      height: 2.1,
                                      letterSpacing: -0.15,
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
                                      "assets/eCommerceApp/image-13.png",
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
                          initialRating: 0,
                          minRating: 2,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 34,
                          itemBuilder: (context, _) => Icon(
                            CupertinoIcons.star,
                            size: 34,
                            color: textFieldText1,
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
                          child: TextField(
                            minLines: 1,
                            maxLines: 10,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Your review',
                              hintStyle: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 14,
                                color: textFieldText1,
                                height: 2.1,
                                letterSpacing: -0.15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 45),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
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
                        SizedBox(height: 35),
                        CustomButton(
                          title: "SEND REVIEW",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RatingReviewsPhotos(),
                              ),
                            );
                          },
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
}
