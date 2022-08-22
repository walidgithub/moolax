import 'package:moolaxblock/services/web_api/web_api.dart';

import '../../business_logic/models/rate.dart';

class FakeWebApi implements WebApi {

  @override
  Future<List<Rate>> fetchExchangeRates() async {
    List<Rate> list = [];
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'EUR',
      exchangeRate: 0.91,
    ));
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'CNY',
      exchangeRate: 7.05,
    ));
    list.add(Rate(
      baseCurrency: 'USD',
      quoteCurrency: 'MNT',
      exchangeRate: 2668.37,
    ));
    return list;
  }

}