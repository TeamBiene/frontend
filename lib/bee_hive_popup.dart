import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';

class BeeHivePopup extends StatefulWidget {
  @override
  State<BeeHivePopup> createState() => BeeHivePopupState();
}

class BeeHivePopupState extends State<BeeHivePopup> {
  TextEditingController nameController = TextEditingController()
    ..text = 'BeeHive1';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Edit your bee hive'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Name'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              initialValue: "BeeHive1",
            ),
            SizedBox(height: 10),
            const Text('Breed'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              initialValue: "Carnica",
            ),
            SizedBox(height: 10),
            const Text('Bee count'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              initialValue: "514",
            ),
            SizedBox(height: 10),
            const Text('Flight radius'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              initialValue: "7 km",
            ),
            SizedBox(height: 10),
            Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.red,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}
