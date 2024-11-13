import 'package:flutter_clean_arch/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

locate<T extends Object>({String? instanceName}) => instanceName == null
    ? getIt.get<T>()
    : getIt.get<T>(instanceName: instanceName);

/*@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);*/
