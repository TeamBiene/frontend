import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestHelper {
  static final fillColor = Color.fromARGB(50, 66, 87, 245);
  static final strokeColor = Color.fromARGB(255, 66, 87, 245);
  static final strokeWidth = 1;

  static Future<Set<Circle>> getCircles(BuildContext context) {
    Set<Circle> _circles = HashSet.from([
      Circle(
          circleId: CircleId("0"),
          center: LatLng(47.5162, 14.5501),
          fillColor: fillColor,
          radius: 5000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("1"),
          center: LatLng(48.27952171250482, 14.414773629097914),
          fillColor: fillColor,
          radius: 3000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("2"),
          center: LatLng(47.352088904265706, 12.133402464068094),
          fillColor: fillColor,
          radius: 10000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("3"),
          center: LatLng(47.37714688293383, 15.74660112003424),
          fillColor: fillColor,
          radius: 3000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("4"),
          center: LatLng(47.69351801147198, 14.871047862103877),
          fillColor: fillColor,
          radius: 2000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("5"),
          center: LatLng(47.04206151472808, 10.098666019582039),
          fillColor: fillColor,
          radius: 5000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
      Circle(
          circleId: CircleId("6"),
          center: LatLng(48.02447921552796, 16.597490905910227),
          fillColor: fillColor,
          radius: 8000,
          strokeWidth: strokeWidth,
          strokeColor: strokeColor,
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is my content'),
                    ));
          }),
    ]);

    return Future<Set<Circle>>.value(_circles);
  }
}
