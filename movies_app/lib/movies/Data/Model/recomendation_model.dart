import 'package:movies_app/movies/Domian/Entities/recomendition_movies.dart';

class RecomandationModel extends RecomendationMovies {
  const RecomandationModel({super.backdropPath, required super.id});
  factory RecomandationModel.fromJason(Map<String, dynamic> jason) {
    return RecomandationModel(
        id: jason["id"],
        backdropPath:
            jason["backdrop_path"] ?? "/8SXjxL4nVxLQouaNkazQAklDX4h.jpg");
  }
}
