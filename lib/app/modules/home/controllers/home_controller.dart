import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class HomeController extends GetxController {
  RxInt activePage = 0.obs;
  RxInt cashpriceCurrentIndex = 0.obs;
  RxInt customHomePage = 0.obs;
  MapController mapController = MapController();
  Set<Polyline> polylines = {};
  RxBool isPolyLineEnable = false.obs;

  List<String> imgage = ["bg", "img2", "img3"];

  createPolyline(LatLng l1, LatLng l2, LatLng l3) {
    try {
      polylines.add(singlePolyine(l1, l2));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Polyline singlePolyine(LatLng l1, LatLng l2) {
    Polyline p = Polyline(points: [l1, l2]);
    return p;
  }
}
