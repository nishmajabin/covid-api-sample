import 'package:flutter/material.dart';
import 'package:testing_api_app/covid_case.dart';

main() {
  runApp(TestApiApp());
}

class TestApiApp extends StatelessWidget {
  const TestApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CovidCase(),
      debugShowCheckedModeBanner: false,
    );
  }
}