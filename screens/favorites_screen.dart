import 'package:cricket_app/E%20Commerce%20App/models/favorites_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/favorites%20top/favorites_catalog_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List favoritesTops = [
    "Summer",
    "T-Shirts",
    "Shirts",
    "Shirts",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
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
                    Text("Favorites", style: headline1),
                    SizedBox(height: 12),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          favoritesTops.length,
                          (index) {
                            return Container(
                              width: 100,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11,
                                vertical: 8,
                              ),
                              margin: EdgeInsets.only(right: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: text1,
                              ),
                              child: Text(
                                "${favoritesTops[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: textField,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Container(
                      padding: EdgeInsets.only(
                        left: 2,
                        right: 6,
                        top: 6,
                        bottom: 6,
                      ),
                      color: bgColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.filter_list_sharp,
                                size: 24,
                              ),
                              SizedBox(width: 11),
                              Text(
                                "Filters",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: text1,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.swap_vert_rounded,
                                    size: 24,
                                  ),
                                  SizedBox(width: 11),
                                  Text(
                                    "Price: lowest to high",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: text1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FavoritesCatalogGridView(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.format_list_bulleted,
                                  size: 24,
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
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          child: ListView.builder(
            itemCount: favoritesItems.length,
            itemBuilder: ((context, index) {
              final item = favoritesItems[index];
              return Container(
                margin: EdgeInsets.only(bottom: 26),
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
                          child: Stack(
                            children: [
                              Image.asset(
                                item.image,
                                fit: BoxFit.cover,
                                width: 106,
                                height: 116,
                              ),
                              if (item.label !=
                                  null) // Only show label if it exists
                                Positioned(
                                  top: 5,
                                  left: 4,
                                  child: Container(
                                    height: 24,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: _getLabelColor(item.label!),
                                      borderRadius: BorderRadius.circular(29),
                                    ),
                                    child: Text(
                                      item.label!,
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
                        ),
                        SizedBox(width: 11),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${favoritesItems[index].brand}",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  letterSpacing: -0.15,
                                  color: textFieldText1,
                                ),
                              ),
                              Text(
                                "${favoritesItems[index].name}",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: text1,
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
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
                                          text:
                                              "${favoritesItems[index].colorValue}",
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
                                      style: DefaultTextStyle.of(context).style,
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
                                          text:
                                              "${favoritesItems[index].sizeValue}",
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
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    "\$${favoritesItems[index].price}",
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 2,
                                      color: text1,
                                    ),
                                  ),
                                  SizedBox(width: 34),
                                  if (favoritesItems[index].rating != null)
                                    Row(
                                      children: [
                                        ...List.generate(
                                          5,
                                          (starIndex) => Icon(
                                            starIndex <
                                                    favoritesItems[index]
                                                        .rating!
                                                ? Icons.star_rate
                                                : Icons.star_rate_outlined,
                                            color: starIndex <
                                                    favoritesItems[index]
                                                        .rating!
                                                ? iconColor5
                                                : iconColor2,
                                            size: 14,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        if (favoritesItems[index].reviews !=
                                            null)
                                          Text(
                                            "(${favoritesItems[index].reviews})",
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
                          Icons.close,
                          size: 20,
                          color: textFieldText1.withOpacity(0.54),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 3,
                      child: Transform.translate(
                        offset: Offset(3, 10),
                        child: Container(
                          height: 36,
                          width: 36,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: favoritesItems[index].bag
                                ? cardText3
                                : textField,
                            boxShadow: [
                              BoxShadow(
                                color: textFieldShadow.withOpacity(.08),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              print("Add to bags");
                            },
                            child: favoritesItems[index].bag
                                ? Icon(
                                    Icons.shopping_bag,
                                    color: bgColor,
                                    size: 20,
                                  )
                                : Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color(0xFFDADADA),
                                    size: 20,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  // Function to get background color based on label type
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
