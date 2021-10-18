class SnackModel {
  SnackModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.pricing,
    required this.images,
  });

  String id;
  String title;
  String subTitle;
  String description;
  List<Pricing> pricing;
  List<String> images;

  factory SnackModel.fromJson(Map<String, dynamic> json) => SnackModel(
    id: json["id"],
    title: json["title"],
    subTitle: json["subTitle"],
    description: json["description"],
    pricing: List<Pricing>.from(json["pricing"].map((x) => Pricing.fromJson(x))),
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "subTitle": subTitle,
    "description": description,
    "pricing": List<dynamic>.from(pricing.map((x) => x.toJson())),
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}

class Pricing {
  Pricing({
    required this.quantity,
    required this.save,
    required this.price,
  });

  String quantity;
  String save;
  String price;

  factory Pricing.fromJson(Map<String, dynamic> json) => Pricing(
    quantity: json["quantity"],
    save: json["save"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "quantity": quantity,
    "save": save,
    "price": price,
  };
}