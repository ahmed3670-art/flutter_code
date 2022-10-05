import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/Data/Data_Source/Movies_Remote_data_source.dart';
import 'package:movies_app/movies/Data/Reposetory/Movies_reposetory.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_Most_Pobular_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_Top_Rated_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_now_playing_Movies_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_recomendation_movies_uescase.dart';
import 'package:movies_app/movies/presentation/Controller/bloc/movie_detailes_bloc.dart';
import 'package:movies_app/movies/presentation/Controller/bloc/movies_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //bloc
    sl.registerFactory(() => MovieBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MovieDetailesBloc(sl(), sl()));
//usecases
    sl.registerLazySingleton(() => GetnowplayingMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetTopRatedUsecase(sl()));
    sl.registerLazySingleton(() => GetMostPobularUsecase(sl()));
    sl.registerLazySingleton(() => GetMoiveDetielsusecase(sl()));
    sl.registerLazySingleton(() => GetRecomendationMoviesusecase(sl()));

// repository
    sl.registerLazySingleton<BaseMoiveRepository>(() => MoviesRepository(sl()));
    //data sorce
    sl.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesRemoteDataSource());
  }
}
