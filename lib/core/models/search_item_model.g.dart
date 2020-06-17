// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return SearchItem(
    popularity: json['popularity'] as num,
    voteCount: json['vote_count'] as num,
    voteAverage: json['vote_average'] as num,
    id: json['id'] as num,
    posterPath: json['poater_path'] as String,
    backdropPath: json['backdrop_path'] as String,
    language: json['original_language'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    releaseDate: json['release_date'] as String,
    overview: json['overview'] as String,
    title: json['title'] as String,
    video: json['video'] as bool,
    adult: json['adult'] as bool,
  );
}

Map<String, dynamic> _$SearchItemToJson(SearchItem instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'id': instance.id,
      'poater_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'original_language': instance.language,
      'genre_ids': instance.genreIds,
      'release_date': instance.releaseDate,
      'overview': instance.overview,
      'title': instance.title,
      'video': instance.video,
      'adult': instance.adult,
    };
