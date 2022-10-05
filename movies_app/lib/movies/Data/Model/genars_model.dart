import 'package:movies_app/movies/Domian/Entities/genars.dart';

class GenarsModel extends Genars {
  GenarsModel({required super.id, required super.name});
  factory GenarsModel.fromJason(Map<String, dynamic> jason) {
    return GenarsModel(id: jason['id'], name: jason["name"]);
  }
}
