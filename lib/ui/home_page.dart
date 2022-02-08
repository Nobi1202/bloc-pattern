// import 'package:bloc_pattern/bloc/food_bloc.dart';
// import 'package:bloc_pattern/bloc/food_event.dart';
// import 'package:bloc_pattern/bloc/food_state.dart';
// import 'package:bloc_pattern/elements/error.dart';
// import 'package:bloc_pattern/elements/list.dart';
// import 'package:bloc_pattern/elements/loading.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   FoodBloc? foodBloc;
//
//   @override
//   void initState() {
//     foodBloc = BlocProvider.of<FoodBloc>(context);
//     foodBloc?.add(FetchFoodEvent());
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<FoodBloc, FoodState>(
//         builder: (context, state) {
//           if (state is FoodInitialState) {
//             return buildLoading();
//           } else if (state is FoodLoadingState) {
//             return buildLoading();
//           } else if (state is FoodLoadedState) {
//             return buildHintsList(state.recipes!);
//           } else if (state is FoodErrorState) {
//             return buildError(state.message);
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }

import 'package:bloc_pattern/bloc/food_bloc.dart';
import 'package:bloc_pattern/bloc/food_event.dart';
import 'package:bloc_pattern/bloc/food_state.dart';
import 'package:bloc_pattern/elements/error.dart';
import 'package:bloc_pattern/elements/list.dart';
import 'package:bloc_pattern/elements/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<FoodBloc>(context).add(FetchFoodEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocBuilder<FoodBloc, FoodState>(
          builder: (context, state) {
            if (state is FoodInitialState) {
              return buildLoading();
            } else if (state is FoodLoadingState) {
              return buildLoading();
            } else if (state is FoodLoadedState) {
              return buildHintsList(state.recipes);
            } else if (state is FoodErrorState) {
              return buildError(state.message);
            }
            return Container();
          },
        ),
      ),
    );
  }
}
