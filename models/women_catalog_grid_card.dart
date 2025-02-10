class WomenCatalogGridCard {
  final String image;
  final String name;
  final String brand;
  final int? reviews;
  final String price;
  final String? discountPrice;
  final double? rating;
  final String? label;

  WomenCatalogGridCard({
    required this.image,
    required this.name,
    required this.brand,
    this.reviews,
    required this.price,
    this.discountPrice,
    this.rating,
    this.label,
  });
}

final List<WomenCatalogGridCard> gridCard = [
  WomenCatalogGridCard(
    image: "assets/eCommerceApp/image-9.png",
    name: "T-Shirt SPANISH",
    brand: "Mango",
    reviews: 3,
    price: "9",
    rating: 4,
    label: "",
  ),
  WomenCatalogGridCard(
    image: "assets/eCommerceApp/image-10.png",
    name: "Blouse",
    brand: "Dorothy Perkins",
    reviews: 10,
    price: "21",
    discountPrice: "14",
    rating: 5,
    label: "-20",
  ),
  WomenCatalogGridCard(
    image: "assets/eCommerceApp/image-9.png",
    name: "Shirt",
    brand: "Mango",
    price: "17",
    label: "",
    reviews: 0,
  ),
  WomenCatalogGridCard(
    image: "assets/eCommerceApp/image-10.png",
    name: "Light Blouse",
    brand: "Dorothy Perkins",
    reviews: 10,
    price: "21",
    discountPrice: "14",
    rating: 5,
    label: "-20",
  ),
];
