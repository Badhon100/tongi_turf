import 'package:get_it/get_it.dart';
import 'package:tongi_turf/features/authentication/data_sources/auth_data_source.dart';
import 'package:tongi_turf/features/authentication/repository/auth_repository.dart';
import 'package:tongi_turf/features/authentication/view/bloc/login/login_bloc.dart';

class LoginDependency {
  static void init(GetIt sl) {
    // DataSource
    sl.registerLazySingleton<AuthDataSource>(() => AuthDataSource());

    // Repository
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepository(sl<AuthDataSource>()),
    );

    // Bloc
    sl.registerFactory<LoginBloc>(() => LoginBloc(sl<AuthRepository>()));
  }
}
