import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/models/search_item_model.dart';

const baseUrl = 'https://api.themoviedb.org/3/';
const imageUrl = 'https://image.tmdb.org/t/p/w500/';

@injectable
class Api {

  @factoryMethod
  // ignore: missing_return
  Future<SearchItem> getCharacterWithId(int id) async {
  }


}