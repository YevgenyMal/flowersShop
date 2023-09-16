import 'package:flowers/futer_icons.dart';
import 'package:flowers/global_appbar.dart';
import 'package:flowers/owner_info_infopage.dart';
import 'package:flowers/user_info_form.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(36.85253, 30.62205);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              const GlobalAppBar(isAboutUsScreen: true),
              const SizedBox(height: 20),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 16.0,
                  ),
                  markers: {
                    const Marker(
                      markerId: MarkerId('Antal ya'),
                      position: LatLng(36.85253, 30.62205),
                    )
                  },
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 226, 223, 223),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UserForm(),
                      SizedBox(width: 50),
                      OwnerInfo(),
                    ],
                  ),
                ),
              ),
              const MainBottomIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
