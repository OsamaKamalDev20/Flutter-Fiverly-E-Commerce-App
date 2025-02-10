import 'package:cricket_app/E%20Commerce%20App/pages/my%20orders/my_orders.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/payment%20method/payment_card_method.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/promo%20codes/promo_codes.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/rating%20reviews/rating_reviews_photos.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/setting/setting_screen.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/shipping%20address/shipping_address.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List profileScreenTitle = [
    "My orders",
    "Shipping addresses",
    "Payment methods",
    "Promocodes",
    "My reviews",
    "Settings",
  ];
  final List profileScreensubTitle = [
    "Already have 12 orders",
    "3 ddresses",
    "Visa  **34",
    "You have special promocodes",
    "Reviews for 4 items",
    "Notifications, password",
  ];
  final List navigationScreen = [
    MyOrders(),
    ShippingAddress(),
    PaymentCardMethod(),
    PromoCodes(),
    RatingReviewsPhotos(),
    SettingScreen()
  ];
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
                    Text(
                      "Profile Screen",
                      style: headline1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            ListTile(
              leading: Container(
                height: 64,
                width: 64,
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
              title: Text(
                "Matilda Brown",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: text1,
                  height: 1.2,
                ),
              ),
              subtitle: Text(
                "matildabrown@mail.com",
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: textFieldText1,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(height: 28),
            Expanded(
              child: ListView.builder(
                itemCount: profileScreenTitle.length,
                itemBuilder: (context, index) {
                  return profileScreen(
                    profileScreenTitle[index],
                    profileScreensubTitle[index],
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navigationScreen[index],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileScreen(
    final String title,
    final String subtitle,
    final VoidCallback onPressed,
  ) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: text1,
          height: 1,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.normal,
          fontSize: 11,
          color: textFieldText1,
          height: 1,
        ),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 15,
          color: textFieldText1,
        ),
      ),
    );
  }
}
