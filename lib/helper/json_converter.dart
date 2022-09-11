part of 'helper.dart';

class JsonConvert {
  static double stringToDouble(val) {
    return double.parse(val.toString());
  }

  static double stringToDoubleNull(val) {
    if (val != null) {
      return double.parse(val.toString());
    }
    return 0;
  }

  static LatLng toLatLng(dynamic val) {
    return LatLng(val['location']['lat'], val['location']['lng']);
  }
}
