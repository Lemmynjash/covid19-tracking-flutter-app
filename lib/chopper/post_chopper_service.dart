import 'package:chopper/chopper.dart';

part 'post_chopper_service.chopper.dart'; // this one has to be the same name as your chopper sevice

@ChopperApi(baseUrl: '/v2')
abstract class PostApiService extends ChopperService {
  @Get(path: '/all')
  Future<Response> getAllWorldWideData();

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
