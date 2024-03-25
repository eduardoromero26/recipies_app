import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/utils/endpoints.dart';

void main() async {
  await dotenv.load(fileName: "assets/env/.env.dev");
  final api = BaseApi();

  test('getFromApi returns correct data on success', () async {
    final response = await api.getFromApi(Endpoints.searchMealByName);
    expect(response.statusCode, 200);
  });

  test('getFromApi throws DioException on error', () async {
    final response = await api.getFromApi('error');
    expect(
      response,
      isA<DioException>(),
    );
  });
}
