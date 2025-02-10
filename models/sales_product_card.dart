class SaleProducts {
  final String name;
  final String brand;
  final String price;
  final String discountPrice;

  final String image;
  final String label;

  SaleProducts({
    required this.name,
    required this.brand,
    required this.price,
    required this.discountPrice,
    required this.image,
    required this.label,
  });
}

//We will create new product card for above class.
final List<SaleProducts> salesProducts = [
  SaleProducts(
    name: "Evening Dress",
    brand: "Dorothy Perkins",
    price: "15",
    discountPrice: "12",
    image: "assets/eCommerceApp/image-5.png",
    label: "-20%",
  ),
  SaleProducts(
    name: "Sport Dress",
    brand: "Sitlly",
    price: "22",
    discountPrice: "19",
    image: "assets/eCommerceApp/image-6.png",
    label: "-15%",
  ),
  SaleProducts(
    name: "Sport Dress",
    brand: "Dorothy Perkins",
    price: "14",
    discountPrice: "12",
    image: "assets/eCommerceApp/image-7.png",
    label: "-20%",
  ),
];
