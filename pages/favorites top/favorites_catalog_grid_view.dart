import 'package:cricket_app/E%20Commerce%20App/models/favorites_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/product/product_card.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FavoritesCatalogGridView extends StatefulWidget {
  const FavoritesCatalogGridView({super.key});

  @override
  State<FavoritesCatalogGridView> createState() =>
      _FavoritesCatalogGridViewState();
}

class _FavoritesCatalogGridViewState extends State<FavoritesCatalogGridView> {
  List favoritesTops = [
    "Summer",
    "T-Shirts",
    "Shirts",
    "Shirts",
  ];
  final List<String> _sortOptions = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: lowest to high",
    "Price: highest to lowest",
  ];
  String selectedSortOption = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: Text("Favorites", style: headline3),
          backgroundColor: textField,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: textField,
                  boxShadow: [
                    BoxShadow(
                      color: text2.withOpacity(.12),
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
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
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 24,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_sharp,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
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
                            const SizedBox(height: 18),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 2,
                              ),
                              color: bgColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.filter_list_sharp,
                                        size: 24,
                                      ),
                                      SizedBox(width: 11),
                                      const Text(
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
                                      GestureDetector(
                                        onTap: () {
                                          showSortOptions(context);
                                        },
                                        child: const Icon(
                                          Icons.swap_vert_rounded,
                                          size: 24,
                                        ),
                                      ),
                                      const SizedBox(width: 11),
                                      Text(
                                        selectedSortOption.isEmpty
                                            ? "Sort by"
                                            : selectedSortOption,
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: text1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.view_module,
                                      size: 24,
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
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 26,
              childAspectRatio: 0.50,
            ),
            itemCount: favoritesItems.length,
            itemBuilder: ((context, index) {
              final favorites = favoritesItems[index];
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductCardDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: 164,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${favoritesItems[index].image}",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
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
                          if (favorites.label != null)
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 24,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: _getLabelColor(favorites.label!),
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: Text(
                                  favorites.label!,
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: textField,
                                  ),
                                ),
                              ),
                            ),
                          Positioned(
                            top: 6,
                            right: 6,
                            child: Icon(
                              Icons.close,
                              size: 20,
                              color: textFieldText1.withOpacity(0.54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    if (favorites.rating != null)
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (starIndex) => Icon(
                              starIndex < favorites.rating!
                                  ? Icons.star_rate_rounded
                                  : Icons.star_rate_outlined,
                              color: starIndex < favorites.rating!
                                  ? iconColor5
                                  : iconColor2,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 4),
                          if (favorites.reviews != null)
                            Text(
                              "(${favorites.reviews})",
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
                    SizedBox(height: 5),
                    Text(
                      "${favorites.brand}",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.1,
                        color: textFieldText1,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${favorites.name}",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: text1,
                      ),
                    ),
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
                                text: "${favorites.colorValue}",
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
                                text: "${favorites.sizeValue}",
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
                    SizedBox(height: 4),
                    Row(
                      children: [
                        if (favorites.discountPrice != null) ...[
                          Text(
                            "\$${favorites.price}",
                            style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                              color: cardText1,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "\$${favorites.discountPrice}",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: cardText3,
                            ),
                          ),
                        ] else
                          Text(
                            "\$${favorites.price}",
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
            }),
          ),
        ),
      ),
    );
  }

  void showSortOptions(BuildContext context) {
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Sort By",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: text1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ..._sortOptions.map((option) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSortOption = option;
                        });
                        Navigator.pop(context); // Close the bottom sheet
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: selectedSortOption == option
                              ? cardText3
                              : Colors.transparent,
                        ),
                        child: Text(
                          option,
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            color: selectedSortOption == option
                                ? textField
                                : text1,
                            fontSize: 16,
                            fontWeight: selectedSortOption == option
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        );
      },
    ).then((_) {
      setState(() {}); // Refresh UI after modal is closed
    });
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
