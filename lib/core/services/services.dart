import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/exceptions/exceptions.dart';
import 'package:movie_tracker/core/models/search_item_model.dart';
import 'package:movie_tracker/locator.dart';

const BASE_URL = 'https://api.themoviedb.org/3/';
const BASE_IMAGE_URL = 'https://image.tmdb.org/t/p';
const BASE_BACKDROP_URL = "$BASE_IMAGE_URL/w780";
const BASE_POSTER_URL = "$BASE_IMAGE_URL/w500";
const API_KEY = String.fromEnvironment("TMDB_API_KEY");

@lazySingleton
class Api {
  final Client _http = getIt<Client>();

  /// Gets the movies, TV shows or people that match [keyword].
  ///
  /// An optional [page] parameter can be specified
  /// to get results for that page instead of the default first page.
  ///
  /// A maximum of 20 results is returned per page.
  Future<SearchResults> searchKeyword(String keyword, {int page}) async {
    try {
      // Build the query parameters to send
      Map<String, dynamic> queryParameters = {
        "api_key": API_KEY,
        "query": keyword,
      };
      if (page != null)
        queryParameters["page"] = page;

      // Make request to the API to get results matching keyword
      var response = await _http.get(BASE_URL + "search/multi?" + _buildQuery(queryParameters));

      // Return the results if the request was successful
      if (response.statusCode == 200)
        return SearchResults.fromJson(json.decode(response.body));

      // Handle errors for unsuccessful requests
      var responseBody = json.decode(response.body);
      switch (response.statusCode) {
        case 401:
          throw AuthenticationException(code: responseBody["status_code"], message: responseBody["status_message"]);
        case 404:
          throw Http404Exception(code: responseBody["status_code"], message: responseBody["status_message"]);
      }
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw InternetException();
    }
    return null;
  }

  /// Helper function to construct a URL query
  String _buildQuery(Map<String, dynamic> queryParams) {
    return Uri(queryParameters: queryParams).query;
  }
}