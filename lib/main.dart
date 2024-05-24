import 'package:dev_portfolio/portfolio.dart';
import 'package:dev_portfolio/utils/color_schemes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jorge Román ',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      home: const Portfolio(),
    );
  }
}
