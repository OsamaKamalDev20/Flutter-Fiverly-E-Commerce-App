import 'package:cricket_app/E%20Commerce%20App/models/women_catalog_grid_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/filter/filter_page.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/product/product_card.dart';
import 'package:cricket_app/E%20Commerce%20App/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';

class WomenCatalogGridView extends StatefulWidget {
  const WomenCatalogGridView({super.key});

  @override
  State<WomenCatalogGridView> createState() => _WomenCatalogGridViewState();
}

class _WomenCatalogGridViewState extends State<WomenCatalogGridView> {
  final List womenTops = [
    "T-shirts",
    "Crop tops",
    "Sleeveless",
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

  final List<String> sizes = ["XS", "S", "M", "L", "XL"];
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: Text("Women’s tops", style: headline3),
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
                                  womenTops.length,
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
                                        "${womenTops[index]}",
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
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  FilterPage(),
                                            ),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.filter_list_sharp,
                                          size: 24,
                                        ),
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
                                  GestureDetector(
                                    onTap: () {
                                      showSelectedSizeOptions(context);
                                    },
                                    child: const Text(
                                      "Select size",
                                      style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: text1,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.view_module,
                                    size: 24,
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
              childAspectRatio: 0.5,
            ),
            itemCount: gridCard.length,
            itemBuilder: ((context, index) {
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
                                    "${gridCard[index].image}",
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
                                      color: text2.withOpacity(0.08),
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
                          if (gridCard[index].label != null &&
                              gridCard[index].label!.isNotEmpty)
                            Positioned(
                              top: 9,
                              left: 8,
                              child: Container(
                                width: 40,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(29),
                                  color: cardText3,
                                ),
                                child: Center(
                                  child: Text(
                                    "${gridCard[index].label}%",
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
                    ),
                    SizedBox(height: 7),
                    if (gridCard[index].rating != null)
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (starIndex) => Icon(
                              starIndex < gridCard[index].rating!
                                  ? Icons.star_rate
                                  : Icons.star_rate_outlined,
                              color: starIndex < gridCard[index].rating!
                                  ? iconColor5
                                  : iconColor2,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 4),
                          if (gridCard[index].reviews != null)
                            Text(
                              "(${gridCard[index].reviews})",
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
                      "${gridCard[index].brand}",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.1,
                        color: textFieldText1,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "${gridCard[index].name}",
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
                        if (gridCard[index].discountPrice != null) ...[
                          Text(
                            "\$${gridCard[index].price}",
                            style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                              color: cardText1,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "\$${gridCard[index].discountPrice}",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: cardText3,
                            ),
                          ),
                        ] else
                          Text(
                            "\$${gridCard[index].price}",
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
}
