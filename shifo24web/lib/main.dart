import 'package:flutter/material.dart';
import 'package:shifo24web/src/config/router/app_router.dart';
import 'package:shifo24web/src/config/theme/app_themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shifo24 Demo',
      theme: appThemeData(),
      routes: routes,
      initialRoute: "/home",
    );
  }
}
