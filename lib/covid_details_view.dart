import 'package:flutter/material.dart';
import 'package:testing_api_app/api%20settings/api_model.dart';

class CovidDetailsView extends StatelessWidget {
  final ApiModel country;

  const CovidDetailsView({
    super.key,
    required this.country
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 29, 29),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(country.country),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.network(country.flag, width: 200),
            SizedBox(height: 20),
            Text(
            'Cases: ${country.cases}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Recovered: ${country.recovered}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Active: ${country.active}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Deaths: ${country.deaths}',
              style: TextStyle(
                color: const Color.fromARGB(255, 132, 22, 14),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Continent: ${country.continent}',
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
