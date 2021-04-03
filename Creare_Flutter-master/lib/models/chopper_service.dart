import 'package:chopper/chopper.dart';

part 'chopper_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Post(path: '/api/user/signin')
  Future<Response> loginUser(@Body() Map<String, dynamic> body);

  @Post(path: '/api/user/register')
  Future<Response> registerUser(@Body() Map<String, dynamic> body);

  @Get(path: '/api/institute/fetch/active/{instType}/{geoType}/{country}')
  Future<Response> getActiveSchools(
    @Path('instType') String instType,
    @Path('geoType') String geoType,
    @Path('country') String country,
  );

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://crearee.herokuapp.com',
        services: [_$ApiService()],
        converter: JsonConverter(),
        errorConverter: JsonConverter());
    return _$ApiService(client);
  }
}
