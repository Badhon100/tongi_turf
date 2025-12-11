import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tongi_turf/core/dependency/dependencies.dart/login_dependency.dart';

class Dependency {
  static final sl = GetIt.instance;
  Dependency._init();

  static Future<void> init() async {
    // Initialize SharedPreferences and HTTP client
    // final sharedPref = await SharedPreferences.getInstance();
    // sl.registerLazySingleton(() => sharedPref);

    // Register ApiService
    // sl.registerLazySingleton<ApiService>(() => ApiService());

    // Initialize common and feature-specific dependencies
    LoginDependency.init(sl);
  
  }
}
