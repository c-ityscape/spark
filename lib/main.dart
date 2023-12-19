import 'package:flutter/material.dart';
import 'package:sparks/theme/theme_helper.dart';

import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:sparks/theme/theme_helper.dart';

import 'package:sparks/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'sparks',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.startScreen,
      routes: AppRoutes.routes,
    );
  }
}
