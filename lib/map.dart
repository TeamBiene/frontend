import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:frontend/bee_hive_popup.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';

class HiveMap extends StatefulWidget {
  @override
  State<HiveMap> createState() => HiveMapState();

  final Set<Circle> circles;

  const HiveMap({required this.circles});
}

class HiveMapState extends State<HiveMap> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = HashSet();
  // Future<bool> _locationPermission = Permission.contacts.request().isGranted;

  static final CameraPosition _startPosition = CameraPosition(
    target: LatLng(47.30920251903722, 13.305842526660786),
    zoom: 7.0,
  );

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.circles.length; i++) {
      Circle circle = widget.circles.elementAt(i);

      _markers.add(Marker(
        //add first marker
        markerId: MarkerId(circle.circleId.value.toString()),
        position: circle.center, //position of marker
        onTap: () {
          showDialog(context: context, builder: (_) => BeeHivePopup());
        },
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _startPosition,
        circles: widget.circles,
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
