import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position =
          await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
      longitude = position.longitude;
      latitude = position.latitude;

      print(longitude);
      print(latitude);
    } catch (e) {
      print(e);
    }
  }
}
