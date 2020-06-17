import 'package:json_annotation/json_annotation.dart';
part 'search_item_model.g.dart';

@JsonSerializable(explicitToJson:true)
class SearchItem {

  final num popularity;

  @JsonKey(name: 'vote_count')
  final num voteCount;

  @JsonKey(name: 'vote_average')
  final num voteAverage;

  final num id;

  @JsonKey(name: 'poater_path')
  final String posterPath;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @JsonKey(name: 'original_language')
  final String language;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  final String overview;

  final String title;

  final bool video, adult;

  SearchItem({
      this.popularity,
      this.voteCount,
      this.voteAverage,
      this.id,
      this.posterPath,
      this.backdropPath,
      this.language,
      this.genreIds,
      this.releaseDate,
      this.overview,
      this.title,
      this.video,
      this.adult});

  factory SearchItem.fromJson(Map<String, dynamic> json) => _$SearchItemFromJson(json);
  Map<String, dynamic> toJson() => _$SearchItemToJson(this);
}
