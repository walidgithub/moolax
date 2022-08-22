import 'package:get_it/get_it.dart';
import 'package:moolaxblock/services/storage/storage_service.dart';
import 'package:moolaxblock/services/storage/storage_service_implementation.dart';
import 'package:moolaxblock/services/web_api/web_api.dart';
import 'package:moolaxblock/services/web_api/web_api_implementaion.dart';
import '../business_logic/view_models/calculate_screen_viewmodel.dart';
import '../business_logic/view_models/choose_favorite_viewmodel.dart';
import 'currency/currency_service.dart';

import 'currency/currency_service_implementation.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // services
  serviceLocator.registerLazySingleton<WebApi>(() => WebApiImpl());
  // serviceLocator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  // serviceLocator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());


  // fake data
  // serviceLocator.registerLazySingleton<WebApi>(() => FakeWebApi());
  // serviceLocator.registerLazySingleton<StorageService>(() => FakeStorageService());
  // serviceLocator.registerLazySingleton<CurrencyService>(() => CurrencyServiceFake());

  // view models
  serviceLocator.registerFactory<CalculateScreenViewModel>(() => CalculateScreenViewModel());
  serviceLocator.registerFactory<ChooseFavoritesViewModel>(() => ChooseFavoritesViewModel());
}
