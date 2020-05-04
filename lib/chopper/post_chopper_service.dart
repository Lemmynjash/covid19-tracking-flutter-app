import 'package:chopper/chopper.dart';
import 'package:covid19_tracking/chopper/model/countries_model.dart';

part 'post_chopper_service.chopper.dart'; // this one has to be the same name as your chopper sevice

@ChopperApi(baseUrl: '/v2')
abstract class PostApiService extends ChopperService {
  @Get(path: '/all')
  Future<Response> getAllWorldWideData();

  @Get(path: '/countries?sort=country')
  Future<Response> getAllCountryData();

  static PostApiService create() {
    final myClient = ChopperClient(
      baseUrl: 'https://corona.lmao.ninja',
      services: [
        _$PostApiService(),
      ],
      converter: JsonConverter(),
    );

    return _$PostApiService(myClient);
  }
}
