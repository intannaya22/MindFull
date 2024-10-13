import 'package:flutter/material.dart';
import '../get_started_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    getStartedScreen: (context) => GetStartedScreen(),
    initialRoute: (context) => GetStartedScreen()
  };
}
