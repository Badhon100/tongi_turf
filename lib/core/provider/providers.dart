import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tongi_turf/features/authentication/view/bloc/login/login_bloc.dart';
import 'package:tongi_turf/features/bottom_nav_bar/view/bloc/bottom_nav_bar_bloc.dart';

class BlocProviders {
  static final sl = GetIt.instance;

  static final providers = <BlocProvider>[
    BlocProvider<LoginBloc>(create: (context) => sl<LoginBloc>()),
    BlocProvider<BottomNavBarBloc>(create: (context) => sl<BottomNavBarBloc>()),
  ];
}
