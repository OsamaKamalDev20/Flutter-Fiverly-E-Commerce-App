import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';
import '../../screens/favorites_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/profile_screen.dart';
import '../../screens/shopping_bag_screen.dart';
import '../../screens/shopping_cart_screen.dart';

class ECommerceBottomNavigationBar extends StatefulWidget {
  const ECommerceBottomNavigationBar({super.key});

  @override
  State<ECommerceBottomNavigationBar> createState() =>
      _ECommerceBottomNavigationBarState();
}

class _ECommerceBottomNavigationBarState
    extends State<ECommerceBottomNavigationBar> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    ShoppingCartScreen(),
    ShoppingBagScreen(),
    FavoritesScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: textField,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: cardText1,
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: cardText3,
        ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: cardText3,
        unselectedItemColor: cardText1,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Icon(Icons.home, size: 30)
                : Icon(Icons.home_outlined, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Icon(Icons.shopping_cart, size: 30)
                : Icon(Icons.shopping_cart_outlined, size: 30),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Icon(Icons.shopping_bag, size: 30)
                : Icon(Icons.shopping_bag_outlined, size: 30),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? Icon(Icons.favorite, size: 30)
                : Icon(Icons.favorite_border_sharp, size: 30),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 4
                ? Icon(Icons.person, size: 30)
                : Icon(Icons.person_outlined, size: 30),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
