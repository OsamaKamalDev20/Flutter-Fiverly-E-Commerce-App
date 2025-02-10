class FavoritesCard {
  final String image;
  final String name;
  final String brand;
  final String colorValue;
  final String sizeValue;
  final String? label;
  final bool addToBag;
  final int? reviews;
  final double? rating;
  final String price;
  final String? discountPrice;
  final bool bag;

  FavoritesCard({
    required this.image,
    required this.name,
    required this.brand,
    required this.colorValue,
    required this.sizeValue,
    this.label,
    this.addToBag = false,
    this.rating,
    this.reviews,
    required this.price,
    this.discountPrice,
    this.bag = false,
  });
}

final List<FavoritesCard> favoritesItems = [
  FavoritesCard(
    image: "assets/eCommerceApp/image-21.png",
    name: "Shirt",
    brand: "LIME",
    colorValue: "Blue",
    sizeValue: "L",
    addToBag: true,
    rating: 5,
    reviews: 10,
    price: "32",
    bag: true,
  ),
  FavoritesCard(
    image: "assets/eCommerceApp/image-22.png",
    name: "Longsleeve Violeta",
    brand: "Mango",
    colorValue: "Orange",
    sizeValue: "L",
    addToBag: true,
    rating: 0,
    reviews: 0,
    price: "46",
    label: "NEW",
    bag: true,
  ),
  FavoritesCard(
    image: "assets/eCommerceApp/image-24.png",
    name: "Shirt",
    brand: "Olivier",
    colorValue: "Gray",
    sizeValue: "L",
    addToBag: false,
    rating: 4,
    reviews: 3,
    price: "52",
    bag: false,
  ),
  FavoritesCard(
    image: "assets/eCommerceApp/image-23.png",
    name: "T-Shirt",
    brand: "&Berries",
    colorValue: "Black",
    sizeValue: "S",
    addToBag: true,
    rating: 4,
    reviews: 3,
    price: "55",
    discountPrice: "39",
    bag: true,
    label: "-30%",
  ),
];
