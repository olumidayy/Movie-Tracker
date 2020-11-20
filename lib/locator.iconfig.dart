// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:movie_tracker/core/services/services.dart';
import 'package:movie_tracker/core/services/third_party.dart';
import 'package:http/src/client.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Api>(() => Api());

  //Eager singletons must be registered in the right order
  g.registerSingleton<Client>(registerModule.httpClient);
}

class _$RegisterModule extends RegisterModule {}
