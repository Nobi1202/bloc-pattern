// import 'package:bloc_pattern/bloc/food_event.dart';
// import 'package:bloc_pattern/bloc/food_state.dart';
// import 'package:bloc_pattern/data/model/model.dart';
// import 'package:bloc_pattern/data/repositories/food_repositories.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class FoodBloc extends Bloc<FoodEvent, FoodState> {
//   FoodBloc({FoodState? initialState, required this.repository})
//       : super(initialState!);
//   FoodRepository repository;
//
//   FoodState get initialState => FoodInitialState();
//   Stream<FoodState> mapEventToState(FoodEvent event) async* {
//     if (event is FetchFoodEvent) {
//       yield FoodLoadedState();
//
//       try {
//         List<Recipe> recipes = await repository.getFoods();
//         yield FoodLoadedState(recipes: recipes);
//       } catch (e) {
//         yield FoodErrorState(message: e.toString());
//       }
//     }
//   }
// }

import 'package:bloc_pattern/bloc/food_state.dart';
import 'package:bloc_pattern/data/model/model.dart';
import 'package:bloc_pattern/data/repositories/food_repositories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'food_event.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodRepository repository;

  FoodBloc({required this.repository,Key? key}) : super(FoodInitialState());

  @override
  Stream<FoodState> mapEventToState(FoodEvent event) async* {
    if (event is FetchFoodEvent) {
      yield FoodLoadingState();

      try {
        List<Recipe> recipes = await repository.getFoods();
        yield FoodLoadedState(recipes: recipes);
      } catch (e) {
        yield FoodErrorState(message: e.toString());
      }
    }
  }
}

