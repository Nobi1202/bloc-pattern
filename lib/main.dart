import 'package:bloc_pattern/bloc/food_bloc.dart';
import 'package:bloc_pattern/data/repositories/food_repositories.dart';
import 'package:bloc_pattern/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bloc",
      theme: ThemeData(),
      home: BlocProvider(
        create: (context) => FoodBloc(
          repository: FoodRepositoryImpl(),
        ),
        child: HomePage(),
      ),
    );
  }
}
