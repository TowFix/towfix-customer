import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/application/env/env.dart';

class TowfixApiService {
  static final _dio = Dio();

  static Future<Response> getAddressFromGeographicCoOrdinates(
      double latitude, double longitude) async {
    try {
      final url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude $longitude&key=${Env.googleMapsApiKey}";

      final response = await _dio.get(url);
      return response;
    } catch (e) {
      log('-----------------------\n\nresponse error: ${e.toString()}',
          name: 'getAddressFromGeographicCoOrdinates', error: e);
      final dioError = e as DioError;
      return dioError.response!;
    }
  }
}
