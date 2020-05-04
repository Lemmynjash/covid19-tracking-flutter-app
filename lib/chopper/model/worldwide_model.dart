import 'package:json_annotation/json_annotation.dart';

part 'worldwide_model.g.dart';

@JsonSerializable()
class WorldwideModel {
  int updated;
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
  int affectedCountries;
 int get getUpdated => updated;

 set setUpdated(int updated) => this.updated = updated;

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

 set setCasesPerOneMillion(int casesPerOneMillion) => this.casesPerOneMillion = casesPerOneMillion;

 int get getDeathsPerOneMillion => deathsPerOneMillion;

 set setDeathsPerOneMillion(int deathsPerOneMillion) => this.deathsPerOneMillion = deathsPerOneMillion;

 int get getTests => tests;

 set setTests(int tests) => this.tests = tests;

 
 int get getAffectedCountries => affectedCountries;

 set setAffectedCountries(int affectedCountries) => this.affectedCountries = affectedCountries;

  WorldwideModel({
    this.updated,
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
    this.affectedCountries,
  });

  
  factory WorldwideModel.fromJson(Map<String, dynamic> json)=>_$WorldwideModelFromJson(json);

  Map<String,dynamic> toJson()=> _$WorldwideModelToJson(this);
  
}
