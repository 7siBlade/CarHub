// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/theme/theme.dart';

class CarHubApp extends StatelessWidget {
  const CarHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarHub',
      theme: darkTheme,
      routes: routes,
    );
  }
}