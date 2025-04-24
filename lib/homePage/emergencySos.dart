import 'package:flutter/material.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

class emergencySos extends StatefulWidget {
  const emergencySos({super.key});

  @override
  State<emergencySos> createState() => _emergencySosState();
}

class _emergencySosState extends State<emergencySos> {
  // variable
  late String lat;
  late String long;
  String? locationMessage;
  bool locationLoaded = false;
  bool captionLoaded = false;

  // for location to work
  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.medium,
    );

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('location services are dissabled');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('location Permission are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'locationpermission denied,  we cannot process request',
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    super.initState();
    _loadLocation();
  }

  Future<void> _loadLocation() async {
    try {
      Position position = await getCurrentLocation();
      setState(() {
        lat = '${position.latitude}';
        long = '${position.longitude}';
        locationMessage = 'Latitude: $lat, Longitude: $long';
        locationLoaded = true;
      });
    } catch (e) {
      print('Error loading location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // size variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Dialog(
      backgroundColor: rang3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      insetPadding: EdgeInsets.all(10),
      child: Container(
        height: screenheight * 0.8,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: rang3,
          border: Border.all(color: rang5, width: screenWidth * 0.03),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Medical ASSISTANCE on your way",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.06,
                  color: rang5,
                ),
              ),
              Icon(
                Icons.medical_information,
                size: screenWidth * 0.5,
              ),
              Column(
                children: [
                  Text(
                    "Your current location is:",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05,
                      color: rang5,
                    ),
                  ),
                  locationLoaded
                      ? Text(
                          locationMessage!,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      : const Center(
                          child: Text(
                            'Location...',
                            style: TextStyle(
                                fontSize: 22,
                                color: rang5,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
