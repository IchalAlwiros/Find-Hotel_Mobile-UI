import 'package:flutter/material.dart';
import 'package:hotel/ui/pages/homepage.dart';

void main() => runApp(MyAppsHotel());

class MyAppsHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageHotel(),
    );
  }
}
