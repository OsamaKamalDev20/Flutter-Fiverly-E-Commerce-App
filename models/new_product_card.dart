class NewProducts {
  final String? name;
  final String? brand;
  final String? price;
  final String image;
  final String? label;

  NewProducts({
    this.name,
    this.brand,
    this.price,
    required this.image,
    this.label,
  });
}

//We will create new product card for above class.
final List<NewProducts> newProducts = [
  NewProducts(
    name: "Blouse",
    brand: "OVS",
    price: "30",
    image: "assets/eCommerceApp/image-3.png",
    label: "New",
  ),
  NewProducts(
    name: "T-Shirt Sailing",
    brand: "Mango Boy",
    price: "10",
    image: "assets/eCommerceApp/image-4.png",
    label: "New",
  ),
  NewProducts(
    image: "assets/eCommerceApp/image-4.png",
    label: "New",
  ),
];
