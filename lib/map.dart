import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HiveMap extends StatefulWidget {
  @override
  State<HiveMap> createState() => HiveMapState();

  final Set<Circle> circles;

  const HiveMap({required this.circles});
}

class HiveMapState extends State<HiveMap> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _startPosition = CameraPosition(
    target: LatLng(47.5162, 14.5501),
    zoom: 10.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _startPosition,
        circles: widget.circles,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
