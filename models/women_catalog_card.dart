class WomenCatalogCard {
  final String image;
  final String name;
  final String brand;
  final int? reviews;
  final String price;
  final double? rating;
  final bool favorites;

  WomenCatalogCard({
    required this.image,
    required this.name,
    required this.brand,
    this.reviews,
    required this.price,
    this.rating,
    this.favorites = false,
  });
}

final List<WomenCatalogCard> womenCatalog = [
  WomenCatalogCard(
    image: "assets/eCommerceApp/image-25.png",
    name: "Pullover",
    brand: "Mango",
    reviews: 3,
    price: "51",
    rating: 4,
    favorites: false,
  ),
  WomenCatalogCard(
    image: "assets/eCommerceApp/image-27.png",
    name: "Blouse",
    brand: "Dorothy Perkins",
    price: "34",
    favorites: false,
  ),
  WomenCatalogCard(
    image: "assets/eCommerceApp/image-28.png",
    name: "T-shirt",
    brand: "LOST Ink",
    reviews: 10,
    price: "12",
    rating: 5,
    favorites: true,
  ),
  WomenCatalogCard(
    image: "assets/eCommerceApp/image-29.png",
    name: "Shirt",
    brand: "Topshop",
    reviews: 3,
    price: "51",
    rating: 4,
    favorites: false,
  ),
];
