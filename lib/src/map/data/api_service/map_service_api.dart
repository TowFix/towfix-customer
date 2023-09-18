import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/application/env/env.dart';

final clientProvider = Provider<Dio>((ref) =>
    Dio(BaseOptions(baseUrl: 'https://maps.googleapis.com/maps/api/')));

class MapServiceApi {
  final Dio dio;

  MapServiceApi({required this.dio});

  Future<Response> searchPlaces(String query) async {
    try {
      //  " geocode/json?place_id=ChIJeRpOeF67j4AR9ydy_PIzPuM&key=YOUR_API_KEY"
      // final url =
      //     "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=${Env.googleMapsApiKey}";
      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishment&location=37.76999%2C-122.44696&radius=500&key=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishmentkey=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      final response = await dio.get(
          'place/autocomplete/json?input=$query&key=${Env.googleMapsApiKey}');

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  Future<Response> getGeocodeByPlaceID(String placeID) async {
    try {
      // final endpoint =

      // final url =
      //     "https://maps.googleapis.com/maps/api/";

      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishment&location=37.76999%2C-122.44696&radius=500&key=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishmentkey=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      final response = await dio.get(
        "geocode/json?place_id=$placeID&key=${Env.googleMapsApiKey}",
      );

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  Future<Response> getDirections(
      {required LatLng origin, required LatLng destination}) async {
    try {
      // final endpoint =

      // final url =
      //     "https://maps.googleapis.com/maps/api/";

      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishment&location=37.76999%2C-122.44696&radius=500&key=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      // "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&types=establishmentkey=AIzaSyDL_hAQJdEdP1WmJirJssWtR2NkDiU3FAs";
      final response = await dio.get(
        "directions/json?destination=${destination.latitude},${destination.longitude}&origin=${origin.latitude},${origin.longitude}&key=${Env.googleMapsApiKey}",
      );

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }
}

final mapServiceApiProvider = Provider<MapServiceApi>((ref) {
  final client = ref.watch(clientProvider);

  return MapServiceApi(dio: client);
});

// try {
//       final response = await dio.get('/search/repositories?q=$query');
//       return response;
//     } catch (e) {
//       final dioError = e as DioError;
//       return dioError.response!;
//     }
