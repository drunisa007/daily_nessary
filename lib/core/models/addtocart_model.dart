class AddToCartModel {
  String id;
  String title;
  String image;
  String quantity;
  double price;
  double total;
  int count = 0;
  bool deleted = false;

  AddToCartModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.quantity,
      required this.price,
      required this.total,
      required this.count,
      required this.deleted});
}
