import 'package:cricket_app/E%20Commerce%20App/models/women_catalog_card.dart';
import 'package:cricket_app/E%20Commerce%20App/pages/women%20catalog/women_catalog_grid_view.dart';
import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WomenCatalogListView extends StatefulWidget {
  const WomenCatalogListView({super.key});

  @override
  State<WomenCatalogListView> createState() => _WomenCatalogListViewState();
}

class _WomenCatalogListViewState extends State<WomenCatalogListView> {
  List womenTops = [
    "T-shirts",
    "Crop tops",
    "Sleeveless",
    "Shirts",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(234),
        child: AppBar(
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
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40),
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
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 24,
                                  color: text1,
                                ),
                              ),
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
                          SizedBox(height: 18),
                          Padding(
                            padding: EdgeInsets.only(left: 14, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Women’s tops", style: headline1),
                                SizedBox(height: 12),
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
                                            borderRadius:
                                                BorderRadius.circular(29),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        "Select size",
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: text1,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      WomenCatalogGridView(),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView.builder(
            itemCount: womenCatalog.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 26),
                height: 104,
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
                          child: Image.asset(
                            "${womenCatalog[index].image}",
                            fit: BoxFit.cover,
                            width: 90,
                          ),
                        ),
                        SizedBox(width: 11),
                        Padding(
                          padding: const EdgeInsets.only(top: 11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${womenCatalog[index].name}",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: text1,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "${womenCatalog[index].brand}",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  height: 1.1,
                                  color: textFieldText1,
                                ),
                              ),
                              SizedBox(height: 8),
                              if (womenCatalog[index].rating != null)
                                Row(
                                  children: [
                                    ...List.generate(
                                      5,
                                      (starIndex) => Icon(
                                        starIndex < womenCatalog[index].rating!
                                            ? Icons.star_rate
                                            : Icons.star_rate_outlined,
                                        color: starIndex <
                                                womenCatalog[index].rating!
                                            ? iconColor5
                                            : iconColor2,
                                        size: 16,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    if (womenCatalog[index].reviews != null)
                                      Text(
                                        "(${womenCatalog[index].reviews})",
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
                              SizedBox(height: 8),
                              Text(
                                "\$${womenCatalog[index].price}",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  // height: 2,
                                  color: text1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                            color: textField,
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
                              print("Add to favorites");
                            },
                            child: womenCatalog[index].favorites
                                ? Icon(
                                    CupertinoIcons.heart_fill,
                                    color: cardText3,
                                    size: 20,
                                  )
                                : Icon(
                                    CupertinoIcons.heart,
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
}
