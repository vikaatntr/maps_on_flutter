import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class viewMaps extends StatefulWidget {
  const viewMaps({super.key});

  @override
  State<viewMaps> createState() => _viewMapsState();
}

class _viewMapsState extends State<viewMaps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterMap(options: MapOptions(
        // center: LatLng(3.0, 3.0)
      ), children: <Widget>[
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(markers: [
          Marker(point: LatLng(3.0, 3.0), builder: (context) =>  Icon(Icons.school))
        ],),
      ],),
    );
  }
}