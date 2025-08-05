
import 'package:flutter/material.dart';

class CovidDetailsView extends StatelessWidget {
  final String country;
  final String flag;
  final int cases;
  final int deaths;
  final int recovered;
  final int active;
  final String continent;

  const CovidDetailsView({
    super.key,
    required this.country,
    required this.flag,
    required this.cases,
    required this.recovered,
    required this.active,
    required this.deaths,
    required this.continent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 29, 29),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(country),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.network(flag, width: 200),
            SizedBox(height: 20),
            Text(
              'Cases: $cases',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Recovered: $recovered',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Active: $active',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Deaths: $deaths',
              style: TextStyle(
                color: const Color.fromARGB(255, 132, 22, 14),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Continent: $continent',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
