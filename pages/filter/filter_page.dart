import 'package:cricket_app/E%20Commerce%20App/pages/brand/brands.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(78, 143);

//colors
  final List<Color> colors = [
    Color(0xff020202),
    Color(0xffF6F6F6),
    Color(0xffB82222),
    Color(0xffBEA9A9),
    Color(0xffE2BB8D),
    Color(0xff151867),
  ];

// sizes
  final List<String> sizes = ["XS", "S", "M", "L", "XL"];
  String selectedSize = "";

// categories
  final List<String> categories = ["All", "Women", "Men", "Boys", "Girls"];
  String selectedCategory = "All";

  // Indices of circles that should have a border
  final List<int> borderedCircleIndices = [0, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textField,
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
        title: Text("Filters", style: headline3),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 21),
                Container(
                  height: 42,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 14,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: textFieldShadow.withOpacity(.05),
                      ),
                    ],
                  ),
                  child: Text(
                    "Price range",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: text1,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${_currentRangeValues.start.round()}",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: text1,
                            ),
                          ),
                          Text(
                            "\$${_currentRangeValues.end.round()}",
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: text1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RangeSlider(
                      activeColor: cardText3,
                      inactiveColor: cardText1,
                      min: 0,
                      max: 200,
                      divisions: 100,
                      labels: RangeLabels(
                        "\$${_currentRangeValues.start.round()}",
                        "\$${_currentRangeValues.end.round()}",
                      ),
                      values: _currentRangeValues,
                      onChanged: (RangeValues values) {
                        setState(
                          () {
                            _currentRangeValues = values;
                          },
                        );
                      },
                    )
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  height: 42,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 14,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: textFieldShadow.withOpacity(.05),
                      ),
                    ],
                  ),
                  child: Text(
                    "Colors",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: text1,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        colors.length,
                        (index) {
                          bool hasBorder =
                              borderedCircleIndices.contains(index);
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: hasBorder
                                    ? Border.all(
                                        color: cardText3,
                                        width: 1.5,
                                      )
                                    : null,
                              ),
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  height: 42,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, top: 14),
                  decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: textFieldShadow.withOpacity(.05),
                      ),
                    ],
                  ),
                  child: Text(
                    "Sizes",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: text1,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: sizes.map((size) {
                    bool isSelected = size == selectedSize;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSize = size; // Update the selected size
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: isSelected ? cardText3 : textField,
                            border: isSelected
                                ? null
                                : Border.all(
                                    color: cardText1,
                                    width: 0.4,
                                  ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              size,
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                height: 2,
                                color: isSelected
                                    ? textField
                                    : text1, // Text color
                                fontWeight: isSelected
                                    ? FontWeight.w500
                                    : FontWeight.w400, // Font weight
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 24),
                Container(
                  height: 42,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, top: 14),
                  decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: textFieldShadow.withOpacity(.05),
                      ),
                    ],
                  ),
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: text1,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 12,
                    children: categories.map((category) {
                      bool isSelected = category == selectedCategory;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory =
                                category; // Update the selected category
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? cardText3
                                : textField, // Background color
                            border: isSelected
                                ? null
                                : Border.all(
                                    color: cardText1,
                                    width: 0.4,
                                  ), // Border for unselected
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          child: Center(
                            child: Text(
                              category,
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                height: 2,
                                color: isSelected
                                    ? textField
                                    : text1, // Text color
                                fontWeight: isSelected
                                    ? FontWeight.w500
                                    : FontWeight.w400, // Font weight
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  height: 60,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 12,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: textFieldShadow.withOpacity(.05),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Brand",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.6,
                                  color: text1,
                                ),
                              ),
                              Text(
                                "adidas Originals, Jack & Jones, s.Oliver",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: cardText1,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BrandsList(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: button2,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SafeArea(
              child: Container(
                height: 104,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(0, -4),
                      color: textFieldShadow.withOpacity(.1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _discardButton(),
                      ),
                      SizedBox(width: 23),
                      Expanded(
                        child: _applyButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _discardButton() {
    return GestureDetector(
      onTap: () {
        print("Discard Changes");
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: button2, width: 1),
        ),
        child: Center(
          child: Text(
            "Discard",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 2,
              color: button2,
            ),
          ),
        ),
      ),
    );
  }

  Widget _applyButton() {
    return GestureDetector(
      onTap: () {
        print("Apply Changes");
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: button1,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: buttonShadow.withOpacity(.25),
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Apply",
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 2,
              color: textField,
            ),
          ),
        ),
      ),
    );
  }
}
