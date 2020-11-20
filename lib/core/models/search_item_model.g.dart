// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieSearchItem _$MovieSearchItemFromJson(Map<String, dynamic> json) {
  return MovieSearchItem(
    popularity: (json['popularity'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    id: json['id'] as int,
    posterPath: json['poster_path'] as String,
    backdropPath: json['backdrop_path'] as String,
    originalLanguage: json['original_language'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    releaseDate: DateTime.tryParse(json['release_date'] as String),
    overview: json['overview'] as String,
    title: json['title'] as String,
    video: json['video'] as bool,
    adult: json['adult'] as bool,
  );
}

Map<String, dynamic> _$MovieSearchItemToJson(MovieSearchItem instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'release_date': instance.releaseDate?.toIso8601String(),
      'overview': instance.overview,
      'title': instance.title,
      'video': instance.video,
      'adult': instance.adult,
    };

TVSearchItem _$TVSearchItemFromJson(Map<String, dynamic> json) {
  return TVSearchItem(
    originalName: json['original_name'] as String,
    name: json['name'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    firstAirDate: DateTime.tryParse(json['first_air_date'] as String),
    backdropPath: json['backdrop_path'] as String,
    originalLanguage: json['original_language'] as String,
    id: json['id'] as int,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    overview: json['overview'] as String,
    posterPath: json['poster_path'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    mediaType: json['media_type'] as String,
    originCountry:
        (json['origin_country'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TVSearchItemToJson(TVSearchItem instance) =>
    <String, dynamic>{
      'original_name': instance.originalName,
      'name': instance.name,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'first_air_date': instance.firstAirDate?.toIso8601String(),
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'id': instance.id,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
      'media_type': instance.mediaType,
      'origin_country': instance.originCountry,
    };
