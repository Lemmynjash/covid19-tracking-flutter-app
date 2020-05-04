// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldwide_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldwideModel _$WorldwideModelFromJson(Map<String, dynamic> json) {
  return WorldwideModel(
    updated: json['updated'] as int,
    cases: json['cases'] as int,
    todayCases: json['todayCases'] as int,
    deaths: json['deaths'] as int,
    todayDeaths: json['todayDeaths'] as int,
    recovered: json['recovered'] as int,
    active: json['active'] as int,
    critical: json['critical'] as int,
    casesPerOneMillion: json['casesPerOneMillion'] as int,
    deathsPerOneMillion: json['deathsPerOneMillion'] as int,
    tests: json['tests'] as int,
    affectedCountries: json['affectedCountries'] as int,
  );
}

Map<String, dynamic> _$WorldwideModelToJson(WorldwideModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'active': instance.active,
      'critical': instance.critical,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'tests': instance.tests,
      'affectedCountries': instance.affectedCountries,
    };
