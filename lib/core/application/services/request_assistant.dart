import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/data/dtos/directions/directions.dart';

import '../env/env.dart';

class RequestAssistant {
  static final _dio = Dio();

  static Future<dynamic> receiveRequest(String url) async {
    final response = await _dio.get(url);

    try {
      if (response.statusCode == 200) {
        final responseData = response.data;

        return responseData;
      } else {
        return 'error occured';
      }
    } catch (e) {
      return 'error occurred, no repsonse';
    }
  }
}

class AssistantMethod {
  static Future<Directions> searchAddressForGeographicCoOrdinates(
      Position position) async {
    final apiUrl =
        "https://maps.googleapi.com/maps/api/geocode/json?latlng=${position.latitude} ${position.longitude}&keys=${Env.googleMapsApiKey}";
    String humanReadableAddress = "";

    var requestResponse = await RequestAssistant.receiveRequest(apiUrl);
    if (!requestResponse.contains('error')) {
      humanReadableAddress = requestResponse['results'[0]]['formatted_address'];
    }

    Directions direcitons = Directions.initial().copyWith(
      locationLatitude: position.latitude,
      locationLongitude: position.longitude,
      humanReadableAddress: humanReadableAddress,
      locationName: humanReadableAddress,
    );
    // userPickeUpAddres.locationLatitude = ;

    return direcitons;
  }
}

locatieUserLocation() async {
  Position cPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  LatLng latLngPosition = LatLng(cPosition.latitude, cPosition.longitude);

  CameraPosition cameraPosition =
      CameraPosition(target: latLngPosition, zoom: 15);

  // newGoogleMapController!
  //     .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

  final directions =
      await AssistantMethod.searchAddressForGeographicCoOrdinates(cPosition);

  log('this our address: ${directions.humanReadableAddress}');
}
