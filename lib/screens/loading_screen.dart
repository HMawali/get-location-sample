import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getLocation();
    print(location.lat);
    print(location.long);
  }

  @override
  Widget build(BuildContext context) {
    // String margin = 'abc';
    // double myMargin = 30.0;

    // try {
    //   myMargin = double.parse(margin);
    // } catch (e) {
    //   print(e);
    // }
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
