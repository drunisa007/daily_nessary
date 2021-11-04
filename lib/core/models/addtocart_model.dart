class AddToCartModel {
  String id;
  String title;
  String image;
  String quantity;
  String package;
  double price;
  double total;
  int count = 1;
  bool deleted = false;

  AddToCartModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.quantity,
      required this.package,
      required this.price,
      required this.total,
      this.count = 0,
      this.deleted = false});
}
