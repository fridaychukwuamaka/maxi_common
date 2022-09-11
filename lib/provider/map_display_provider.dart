import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maxi_common/model/position.dart';
import 'package:maxi_common/service/location_service.dart';
import 'package:maxi_common/themes/themes.dart';

import 'trip_provider.dart';

final mapDisplayProvider = Provider((ref) {
  return MapDisplayProvider(ref.read);
});

class MapDisplayProvider with ChangeNotifier {
  MapDisplayProvider(this._read);

  late GoogleMapController _mapController;
  final Reader _read;
  late final location = _read(locationService);
  late final trip = _read(tripProvider.notifier);

  LatLng center = const Position().coord;
  Set<Marker> markers = {};
  bool? searchPickup = true;

  Future<void> onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
    _mapController.setMapStyle(mapStyle);
    var position = await location.getPosition();
    mapJumpTo(position.coord);
    trip.setStart(position);
    /*   await addMarker(
      initPosition.coord,
      iconPath: 'assets/icons/location_pointer.png',
    ); */
  }

  void setMapPosition(Position initPosition) {
    if (searchPickup == true) {
      trip.setStart(initPosition);
    } else if (searchPickup == false) {
      trip.setEnd(initPosition);
    } else {
      searchPickup = null;
    }
  }

  onCameraIdle() async {
    var vb = await location.getPositionFromCoord(center);
    setMapPosition(vb);
  }

  onCameraMove(CameraPosition pos) async {
    center = pos.target;
  }

  mapJumpTo(LatLng coord) {
    _mapController.moveCamera(CameraUpdate.newLatLng(coord));
  }

  onMapTap(LatLng coord) async {
    print('coord');
    // await _mapController.animateCamera(CameraUpdate.newLatLng(coord));
    // position.copyWith(coord: coord);
  }

  addMarker(LatLng position, {String? iconPath, String? id}) async {
    var icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        devicePixelRatio: 0.8,
        size: Size(10, 10),
      ),
      iconPath!,
    );

    final val = Marker(
      markerId: MarkerId(id ?? iconPath),
      anchor: const Offset(0.5, 0.5),
      position: position,
      zIndex: 2,
      draggable: true,
      icon: icon,
    );

    markers.add(val);
  }
}
