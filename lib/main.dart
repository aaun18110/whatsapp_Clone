import 'package:flutter/material.dart';
import 'Screens/chart.dart';
import 'Screens/home_page.dart';
import 'Screens/setting.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/homepage": (context) => const Homepage(),
      "/chartpage": (context) => const ChartPage(),
      "/setting": (context) => const SettingPage()
    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const Homepage(),
  ));
}
