
import 'package:bips_app/app/modules/dashboard/views/home_sub_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: CurvedNavigationBar(
        
        buttonBackgroundColor: const Color.fromARGB(255, 6, 100, 94),
     color: const Color(0xff263749),
    backgroundColor: Colors.black.withOpacity(0.7),
  index: 2,
    items: const <Widget>[
      Icon(Icons.favorite, color: Colors.white),
      Icon(Icons.person_2, color: Colors.white),
      Icon(Icons.home, color: Colors.white),
      Icon(Icons.settings, color: Colors.white),
      Icon(Icons.tag_faces_rounded, color: Colors.white),
    ],
    onTap: (index){
      
    },
  ),
      body: const HomeSubViewss()
    );
  }
}


