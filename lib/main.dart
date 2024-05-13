import 'package:dev_portfolio/portfolio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jorge Román ',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: Theme.of(context).textTheme,
        canvasColor: const Color.fromARGB(255, 4, 45, 73),
        useMaterial3: true,
        fontFamily: "custom",
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: Colors.grey),
      ),
      home: const Portfolio(),
    );
  }
}
