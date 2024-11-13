import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/di_initializer.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/ui/movie_list_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MovieListScreen(),
    );
  }
}