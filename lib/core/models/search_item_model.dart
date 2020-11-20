import 'package:json_annotation/json_annotation.dart';
part 'search_item_model.g.dart';

@JsonSerializable()
class MovieSearchItem {
  final double popularity;

  final int voteCount;

  final double voteAverage;

  final int id;

  final String posterPath;

  final String backdropPath;

  final String originalLanguage;

  final List<int> genreIds;

  @JsonKey(fromJson: DateTime.tryParse)
  final DateTime releaseDate;

  final String overview;

  final String title;

  final bool video, adult;

  MovieSearchItem(
      {this.popularity,
      this.voteCount,
      this.voteAverage,
      this.id,
      this.posterPath,
      this.backdropPath,
      this.originalLanguage,
      this.genreIds,
      this.releaseDate,
      this.overview,
      this.title,
      this.video,
      this.adult});

  factory MovieSearchItem.fromJson(Map<String, dynamic> json) =>
      _$MovieSearchItemFromJson(json);
  Map<String, dynamic> toJson() => _$MovieSearchItemToJson(this);
}

@JsonSerializable()
class TVSearchItem {
  final String originalName;

  final String name;

  final double popularity;

  final int voteCount;

  @JsonKey(fromJson: DateTime.tryParse)
  final DateTime firstAirDate;

  final String backdropPath;

  final String originalLanguage;

  final int id;

  final double voteAverage;

  final String overview;

  final String posterPath;

  final List<int> genreIds;

  final String mediaType;

  final List<String> originCountry;

  TVSearchItem({
    this.originalName,
    this.name,
    this.popularity,
    this.voteCount,
    this.firstAirDate,
    this.backdropPath,
    this.originalLanguage,
    this.id,
    this.voteAverage,
    this.overview,
    this.posterPath,
    this.genreIds,
    this.mediaType,
    this.originCountry,
  });

  factory TVSearchItem.fromJson(Map<String, dynamic> json) =>
      _$TVSearchItemFromJson(json);
  Map<String, dynamic> toJson() => _$TVSearchItemToJson(this);
}

class SearchResults {
  final int totalResults;
  final int currentPage;
  final int totalPages;
  final List<Map<String, dynamic>> results;

  SearchResults({this.totalResults, this.currentPage, this.totalPages, this.results});

  factory SearchResults.fromJson(Map<String, dynamic> json) => SearchResults(
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
    currentPage: json["page"],
    results: List<Map<String, dynamic>>.from(json["results"]),
  );

  Map<String, dynamic> toJson() => {
    "total_pages": totalPages,
    "total_results": totalResults,
    "page": currentPage,
    "results": results,
  };
}
