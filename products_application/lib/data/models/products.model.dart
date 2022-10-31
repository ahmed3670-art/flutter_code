import 'package:products_application/data/entites/products.dart';

class ProductsModel extends Products {
  ProductsModel(
      {required super.Description,
      required super.company,
      required super.id,
      required super.image,
      required super.name,
      required super.price,
      required super.type});
  factory ProductsModel.fromJason(Map<String, dynamic> jason) {
    return ProductsModel(
        Description: jason["description"],
        company: jason["company"],
        id: jason["id"],
        image: jason["image"],
        name: jason["name"],
        price: jason["price"],
        type: jason["type"]);
  }
}
