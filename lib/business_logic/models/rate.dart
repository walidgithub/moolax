class Rate {
  final String baseCurrency;

  final String quoteCurrency;

  final double exchangeRate;

  Rate(
      {required this.baseCurrency,
      required this.quoteCurrency,
      required this.exchangeRate}) {
    if (baseCurrency.length != 3 || quoteCurrency.length != 3)
      throw ArgumentError('The ISO code must have a length of 3.');
  }

  //factory Rate.fromJson(Map<String, dynamic> json) {
  factory Rate.fromJson(Map<dynamic, dynamic> json) {
    return Rate(
        baseCurrency: json['baseCurrency'],
        quoteCurrency: json['quoteCurrency'],
        exchangeRate: json['exchangeRate']);
  }
}
