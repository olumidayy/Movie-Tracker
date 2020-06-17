import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

var BASE_URL = 'https://api.themoviedb.org/3/';
var IMAGE_URL = 'https://image.tmdb.org/t/p/w500/';

@injectable
class Api {

//   @factoryMethod
//   Future<Character> getCharacterWithId(int id) async {
//   var response;

//   try {
//     response = await http.get('$ID_URL/$id');
//     if (response.statusCode == 200) {
//       var res = json.decode(response.body);
//       if (res['response'] == 'success') {
//         Character character = Character.fromMap(res);
//         return character;
//       }
//       throw 'Specified character not found';
//     }
//   } on TimeoutException {
//     throw 'Unable to fetch character. Check your connection and try again';
//   } on SocketException {
//     throw
//         'Unable to fetch character. Check your connection and try again';
//   }
//   throw
//       'Unable to fetch character. Check your connection and try again';
// }


}