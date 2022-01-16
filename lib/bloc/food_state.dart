//
//
// import 'package:bloc_pattern/data/model/model.dart';
// import 'package:equatable/equatable.dart';
//
// abstract class FoodState extends Equatable {
//
// }
//
// class FoodInitialState extends FoodState {
//   @override
//   List<Object?> get props => [];
//
// }
//
// class FoodLoadingState extends FoodState {
//   @override
//   List<Object?> get props => [];
//
// }
//
// class FoodLoadedState extends FoodState {
//   List<Recipe>? recipes;
//   FoodLoadedState({this.recipes});
//
//   @override
//   List<Object?> get props => [];
//
// }
//
// class FoodErrorState extends FoodState {
//   String message;
//   FoodErrorState({required this.message});
//
//   @override
//   List<Object?> get props => [];
//
// }

import 'package:bloc_pattern/data/model/model.dart';
import 'package:equatable/equatable.dart';

abstract class FoodState extends Equatable {
  const FoodState();

  @override
  List<Object> get props => [];
}

class FoodInitialState extends FoodState {}

class FoodLoadingState extends FoodState {}

class FoodLoadedState extends FoodState {
  List<Recipe> recipes;
  FoodLoadedState({required this.recipes});
}

class FoodErrorState extends FoodState {
  String message;
  FoodErrorState({required this.message});
}
