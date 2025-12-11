import 'package:get_it/get_it.dart';
import 'package:tongi_turf/features/authentication/view/bloc/login/login_bloc.dart';

class LoginDependency {
  static void init(GetIt sl) {  
    sl.registerFactory(
      () => LoginBloc(),
    );
  }
}
