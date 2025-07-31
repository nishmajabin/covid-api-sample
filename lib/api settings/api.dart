import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testing_api_app/api%20settings/api_model.dart';

Future<List<ApiModel>> fetchData() async {
  try {
    final url = 'https://disease.sh/v3/covid-19/countries';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> decodeData = jsonDecode(response.body);
      return decodeData.map((e) => ApiModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data! Status: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Error fetching data: $error');
  }
}
