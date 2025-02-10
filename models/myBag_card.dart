class MyBagCard {
  final String image;
  final String name;
  final String colorValue;
  final String sizeValue;
  final String price;

  MyBagCard({
    required this.image,
    required this.name,
    required this.colorValue,
    required this.sizeValue,
    required this.price,
  });
}

final List<MyBagCard> bagsCard = [
  MyBagCard(
    image: "assets/eCommerceApp/image-25.png",
    name: "Pullover",
    colorValue: "Black",
    sizeValue: "L",
    price: "51",
  ),
  MyBagCard(
    image: "assets/eCommerceApp/image-26.png",
    name: "T-Shirt",
    colorValue: "Gray",
    sizeValue: "L",
    price: "30",
  ),
  MyBagCard(
    image: "assets/eCommerceApp/image-30.png",
    name: "Pullover",
    colorValue: "Black",
    sizeValue: "M",
    price: "43",
  ),
];
