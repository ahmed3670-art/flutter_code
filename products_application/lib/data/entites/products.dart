import 'package:flutter/material.dart';

class Products {
  int id;
  String company;
  String name;
  String type;
  String price;
  String image;
  String Description;
  Products(
      {required this.Description,
      required this.company,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.type});
}
