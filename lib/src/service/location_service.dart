import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as geo_coding;
import 'package:maxi_common/src/data/model/position/position.dart';


class LocationService {
  Location location = Location();

  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  late LocationData _locationData;

  _getServiceEnabled() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }
  }

  _getLocationPermission() async {
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  Future<LocationData>? getCoord() async {
    await _getServiceEnabled();
    await _getLocationPermission();
    _locationData = await location.getLocation();
    return _locationData;
  }

  Future<Position> getPosition() async {
    var coord = await location.getLocation();
    var addresses = await geo_coding.placemarkFromCoordinates(
      coord.latitude!,
      coord.longitude!,
    );
    return Position(
      address: addresses.first.street ?? '',
      coord: LatLng(coord.latitude!, coord.longitude!),
    );
  }

  Future<Position> getPositionFromCoord(LatLng coord) async {
    var addresses = await geo_coding.placemarkFromCoordinates(
      coord.latitude,
      coord.longitude,
    );
    return Position(
      address: addresses.first.street!.isEmpty
          ? 'Unknown Address'
          : addresses.first.street ?? 'Unknown Address',
      coord: LatLng(coord.latitude, coord.longitude),
    );
  }
}
