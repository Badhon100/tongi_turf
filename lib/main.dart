import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tongi_turf/core/dependency/di.dart';
import 'package:tongi_turf/core/provider/providers.dart';
import 'package:tongi_turf/core/route/routes.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Dependency.init();
  await Supabase.initialize(
    url: 'https://jmefezknmbelhzweyzxx.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImptZWZlemtubWJlbGh6d2V5enh4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjU1MTAwOTEsImV4cCI6MjA4MTA4NjA5MX0.6SGQV7FYZpHm5G1q06enRALknK4C-LFb1XrP9CQEUyM',
  );
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
