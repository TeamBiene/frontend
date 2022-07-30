import 'dart:collection';
import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestHelper {
  static Future<Set<Circle>> getCircles() {
    Set<Circle> _circles = HashSet.from([
      Circle(
          circleId: CircleId("0"),
          center: LatLng(47.5162, 14.5501),
          fillColor: Color.fromARGB(50, 66, 87, 245),
          radius: 5000,
          strokeWidth: 1,
          strokeColor: Color.fromARGB(255, 66, 87, 245)),
    ]);

    return Future<Set<Circle>>.value(_circles);
  }
}
