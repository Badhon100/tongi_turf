import 'package:get_it/get_it.dart';

class BottomNavBarDependency {
  static void init(GetIt sl) {
    // Bloc
    sl.registerFactory<BottomNavBarDependency>(() => BottomNavBarDependency());
  }
}
