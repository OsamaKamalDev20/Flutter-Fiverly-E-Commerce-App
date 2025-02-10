import 'package:cricket_app/E%20Commerce%20App/pages/women%20catalog/women_catalog_list_view.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_buttons.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  List categories = [
    "Tops",
    "Shirts & Blouses",
    "Cardigans & Sweaters",
    "Knitwear",
    "Blazers",
    "Outerwear",
    "Pants",
    "Jeans",
    "Shorts",
    "Skirts",
    "Dresses"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: text1,
          ),
        ),
        title: Text("Categories", style: headline3),
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
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                  title: "VIEW ALL ITEMS",
                  onPressed: () {},
                ),
                SizedBox(height: 16),
                Text(
                  "Choose category",
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: textFieldText1,
                    height: 2,
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: List.generate(
                    categories.length,
                    (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WomenCatalogListView(),
                                ),
                              );
                            },
                            child: Text("${categories[index]}", style: text),
                          ),
                          Divider(
                            color: textFieldText1.withOpacity(0.25),
                            thickness: 0.4,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
