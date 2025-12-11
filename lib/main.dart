import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tongi_turf/core/dependency/di.dart';
import 'package:tongi_turf/core/provider/providers.dart';
import 'package:tongi_turf/core/route/routes.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Dependency.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRoute = AppRoute();

    return MultiBlocProvider(
      providers: BlocProviders.providers,
      child: MaterialApp(
        title: 'Tongi Turf',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRoute.onGenerateRoute,
        initialRoute: '/',
        theme: ThemeData(primarySwatch: Colors.green),
      ),
    );
  }
}
