import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/services/services.dart';
part 'locator.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit 
void configureDependencies() => $initGetIt(getIt);