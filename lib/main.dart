import 'package:flutter/material.dart';
import 'package:moolaxblock/services/service_locator.dart';
import 'package:moolaxblock/ui/views/calculate_screen.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moola X Block',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculateCurrencyScreen(),
    );
  }
}
