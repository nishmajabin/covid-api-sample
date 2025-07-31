class ApiModel {
  final String country;
  final String flag;
  final int cases;
  final int deaths;
  final int recovered;
  final int active;
  final String continent;

  ApiModel({
    required this.country,
    required this.flag,
    required this.cases,
    required this.deaths,
    required this.active,
    required this.recovered,
    required this.continent,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) {
    return ApiModel(
      country: json['country'],
      flag: json['countryInfo']['flag'],
      cases: json['cases'],
      deaths: json['deaths'],
      active: json['active'],
      recovered: json['recovered'],
      continent: json['continent'],
    );
  }
}
