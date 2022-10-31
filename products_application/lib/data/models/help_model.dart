import 'package:products_application/data/entites/help_entities.dart';

class HelpModel extends Help {
  HelpModel(
      {required super.answer, required super.id, required super.question});

  factory HelpModel.fromJason(Map<String, dynamic> jason) {
    return HelpModel(
        id: jason["id"], answer: jason["answer"], question: jason["question"]);
  }
}
