import 'package:flutter/material.dart';
import 'package:koupag/views/home_view.dart';
import 'package:koupag/screens/main_page.dart';

// this is a class contains all routes with thier page

class Routes {
  static Map<String, Widget Function(BuildContext)> allRoutes = {
    'main_screen': (context) => const MainPage(),
    '/home': (context) => const HomeView(),
  };
}
