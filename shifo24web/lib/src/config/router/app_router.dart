import 'package:flutter/material.dart';
import 'package:shifo24web/src/presentation/home/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Home.id: (context) => const Home(),
};