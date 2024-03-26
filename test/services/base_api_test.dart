import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/utils/endpoints.dart';

import 'base_api_test.mocks.dart';

@GenerateMocks([BaseApi])
void main() {
  group('BaseApi', () {
    late BaseApi api;
    late MockBaseApi mockApi;

    setUp(() {
      mockApi = MockBaseApi();
      api = BaseApi();
    });

    test('getFromApi returns correct data on success', () async {
      when(mockApi.getFromApi(Endpoints.searchMealByName)).thenAnswer(
        (_) async => Response(
          data: {'meals': []},
          statusCode: 200,
          requestOptions: RequestOptions(path: Endpoints.searchMealByName),
        ),
      );

      final response = await mockApi.getFromApi(Endpoints.searchMealByName);
      expect(response.statusCode, 200);
    });

    test('getFromApi throws DioException on error', () async {
      when(mockApi.getFromApi('error')).thenThrow(DioException(
        requestOptions: RequestOptions(path: 'error'),
        error: 'Error occurred',
      ));

      expect(() async => await mockApi.getFromApi('error'),
          throwsA(isA<DioException>()));
    });
  });
}
