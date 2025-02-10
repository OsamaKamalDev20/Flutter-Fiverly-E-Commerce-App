class ProductCard {
  final String image;
  final String name;
  final String brand;
  final int? reviews;
  final String price;
  final String? discountPrice;
  final double? rating;
  final String? label;

  ProductCard({
    required this.image,
    required this.name,
    required this.brand,
    required this.reviews,
    required this.price,
    this.discountPrice,
    required this.rating,
    required this.label,
  });
}

final List<ProductCard> productCard = [
  ProductCard(
    image: "assets/eCommerceApp/image-5.png",
    name: "Evening Dress",
    brand: "Dorothy Perkins",
    reviews: 10,
    price: "15",
    discountPrice: "12",
    rating: 5,
    label: "-20%",
  ),
  ProductCard(
    image: "assets/eCommerceApp/image-4.png",
    name: "T-Shirt Sailing",
    brand: "Mango Boy",
    price: "10",
    rating: 0,
    reviews: 0,
    label: "NEW",
  ),
  ProductCard(
    image: "assets/eCommerceApp/image-4.png",
    name: "T-Shirt Sailing",
    brand: "Mango Boy",
    price: "10",
    rating: 0,
    reviews: 0,
    label: "NEW",
  ),
];
