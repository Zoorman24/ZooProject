import 'package:Zoo_Project/Api/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class AnimalsApiClient {
  factory AnimalsApiClient(Dio dio, {String baseUrl}) = _AnimalsApiClient;

  @GET('/animals')
  Future<Animals> getAnimalsList(@Query('name') String name);
}

AnimalsApiClient initApiClient() {
  final apiUrl = dotenv.env['API_URL'];
  final dio = Dio();
  if (apiUrl != null) {
    return AnimalsApiClient(dio, baseUrl: apiUrl);
  }
  return AnimalsApiClient(dio);
}
