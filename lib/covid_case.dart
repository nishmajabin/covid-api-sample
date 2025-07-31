import 'package:flutter/material.dart';
import 'package:testing_api_app/api%20settings/api.dart';
import 'package:testing_api_app/api%20settings/api_model.dart';
import 'package:testing_api_app/covid_details_view.dart';

class CovidCase extends StatelessWidget {
  const CovidCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Case Report'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 132, 22, 14),
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<ApiModel>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final countries = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                final country = countries[index];
                return ListTile(
                  leading: Image.network(country.flag, width: 40),
                  title: Text(country.country),
                  subtitle: Text('Cases: ${country.cases}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => CovidDetailsView(
                              country: country.country,
                              flag: country.flag,
                              cases: country.cases,
                              recovered: country.recovered,
                              active: country.active,
                              deaths: country.deaths,
                              continent: country.continent,
                            ),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
