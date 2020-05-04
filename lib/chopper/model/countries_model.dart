import 'package:json_annotation/json_annotation.dart';

part 'countries_model.g.dart';

@JsonSerializable()
class CountriesModel {
  int updated;
  String country;
  CountryInfo countryInfo;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;
  String continent;

  int get getUpdated => updated;

  set setUpdated(int updated) => this.updated = updated;

  String get getCountry => country;

  set setCountry(String country) => this.country = country;

  int get getCases => cases;

  set setCases(int cases) => this.cases = cases;

  int get getTodayCases => todayCases;

  set setTodayCases(int todayCases) => this.todayCases = todayCases;

  int get getDeaths => deaths;

  set setDeaths(int deaths) => this.deaths = deaths;

  int get getTodayDeaths => todayDeaths;

  set setTodayDeaths(int todayDeaths) => this.todayDeaths = todayDeaths;

  int get getRecovered => recovered;

  set setRecovered(int recovered) => this.recovered = recovered;

  int get getActive => active;

  set setActive(int active) => this.active = active;

  int get getCritical => critical;

  set setCritical(int critical) => this.critical = critical;

  int get getCasesPerOneMillion => casesPerOneMillion;

  set setCasesPerOneMillion(int casesPerOneMillion) =>
      this.casesPerOneMillion = casesPerOneMillion;

  int get getDeathsPerOneMillion => deathsPerOneMillion;

  set setDeathsPerOneMillion(int deathsPerOneMillion) =>
      this.deathsPerOneMillion = deathsPerOneMillion;

  int get getTests => tests;

  set setTests(int tests) => this.tests = tests;

  int get getTestsPerOneMillion => testsPerOneMillion;

  set setTestsPerOneMillion(int testsPerOneMillion) =>
      this.testsPerOneMillion = testsPerOneMillion;

  String get getContinent => continent;

  set setContinent(String continent) => this.continent = continent;

  CountriesModel({
    this.updated,
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.continent,
  });

  factory CountriesModel.fromJson(Map<String, dynamic> json) =>
      _$CountriesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountriesModelToJson(this);
}


@JsonSerializable()
class CountryInfo {
  int id;
  String iso2;
  String iso3;
  int lat;
  int long;
  String flag;

  
  int get getId => id;

  set setId(int id) => this.id = id;

  String get getIso2 => iso2;

  set setIso2(String iso2) => this.iso2 = iso2;

  String get getIso3 => iso3;

  set setIso3(String iso3) => this.iso3 = iso3;

  int get getLat => lat;

  set setLat(int lat) => this.lat = lat;

  int get getLong => long;

  set setLong(int long) => this.long = long;

  String get getFlag => flag;

  set setFlag(String flag) => this.flag = flag;

  CountryInfo({
    this.id,
    this.iso2,
    this.iso3,
    this.lat,
    this.long,
    this.flag,
  });

   factory CountryInfo.fromJson(Map<String, dynamic> json) =>
      _$CountryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryInfoToJson(this);
}
