// import 'dart:convert';
//
// import 'package:bloc_pattern/data/model/model.dart';
// import 'package:http/http.dart' as http;
//
// abstract class FoodRepository {
//   Future<List<Recipe>> getFoods();
// }
//
// class FoodRepositoryTmpl extends FoodRepository {
//   Future<List<Recipe>?> getFood() async {
//     var response = await http.get(
//       Uri.parse("https://forkify-api.herokuapp.com/api/search?q=pizza#"),
//     );
//     if(response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//
//       List<Recipe>? recipes = Food.fromJson(data).recipes;
//       return recipes;
//     } else {
//       throw Exception("Failed");
//     }
//   }
//
//   @override
//   Future<List<Recipe>> getFoods() {
//     // TODO: implement getFoods
//     throw UnimplementedError();
//   }
// }

import 'dart:convert';

import 'package:bloc_pattern/data/model/model.dart';
import 'package:http/http.dart' as http;

abstract class FoodRepository {
  Future<List<Recipe>> getFoods();
}

class FoodRepositoryImpl extends FoodRepository {
  @override
  Future<List<Recipe>> getFoods() async {
    var response =
    await http.get(Uri.parse('https://forkify-api.herokuapp.com/api/search?q=pizza#'));
    print(response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      List<Recipe> recipes = Food.fromJson(data).recipes;
      return recipes;
    } else {
      throw Exception('Failed');
    }
  }
}
