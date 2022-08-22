

import 'package:moolaxblock/business_logic/models/currency.dart';
import 'package:moolaxblock/business_logic/models/rate.dart';
import 'package:moolaxblock/services/currency/currency_service.dart';

class CurrencyServiceFake implements CurrencyService {

  @override
  Future<List<Rate>> getAllExchangeRates({String? base}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Currency>> getFavoriteCurrencies() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveFavoriteCurrencies(List<Currency> data) {
    throw UnimplementedError();
  }


}