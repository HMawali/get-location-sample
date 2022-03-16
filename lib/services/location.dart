import 'package:geolocator/geolocator.dart';

class Location {
  double? lat;
  double? long;
  Future<void> getLocation() async {
    try {
      await Geolocator.checkPermission();
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      // print(position);
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
}
