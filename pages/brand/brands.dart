import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandsList extends StatefulWidget {
  const BrandsList({super.key});

  @override
  State<BrandsList> createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {
  final List<String> brands = [
    "adidas",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver"
  ];
  List<bool> isChecked = List.generate(10, (index) => false);
  String searchQuery = "";

  // Filter items based on search query
  List<String> get filteredBrands {
    return brands
        .where((item) => item.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

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
        title: Text("Brands", style: headline3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                color: textField,
                borderRadius: BorderRadius.circular(23),
                boxShadow: [
                  BoxShadow(
                    color: textFieldShadow.withOpacity(0.05),
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Color(0xFFDADADA),
                    size: 20,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      cursorColor: text1,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: textFieldText1,
                      ),
                      decoration: InputDecoration(
                        fillColor: textField,
                        filled: true,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: textFieldText1,
                        ),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredBrands.length,
              itemBuilder: (context, index) {
                String brand = filteredBrands[index];
                int originalIndex = brands.indexOf(brand);
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        brand,
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: isChecked[originalIndex]
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color:
                              isChecked[originalIndex] ? cardText3 : cardText2,
                        ),
                      ),
                      Checkbox(
                        activeColor: cardText3,
                        value: isChecked[originalIndex],
                        onChanged: (bool? value) {
                          setState(
                            () {
                              isChecked[originalIndex] = value!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
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
