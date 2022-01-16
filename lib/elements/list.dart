// import 'package:bloc_pattern/data/model/model.dart';
// import 'package:flutter/material.dart';
//
// Widget buildHintsList(List<Recipe> recipes) {
//   return ListView.builder(
//     itemCount: recipes.length,
//     shrinkWrap: true,
//     itemBuilder: (context, index) {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 90,
//               width: 100,
//               child: Image.asset(recipes[index].imageUrl!),
//             ),
//             Text(recipes[index].title!),
//           ],
//         ),
//       );
//     },
//   );
// }

import 'package:bloc_pattern/data/model/model.dart';
import 'package:flutter/material.dart';

Widget buildHintsList(List<Recipe> recipes) {
  return Container(
    child: ListView.builder(
      itemCount: recipes.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 90,
                    width: 100,
                    child: Image.network(recipes[index].imageUrl)),
                // SizedBox(height: 30),
                Text(recipes[index].title),
              ],
            ),
          ),
        );
      },
    ),
  );
}
