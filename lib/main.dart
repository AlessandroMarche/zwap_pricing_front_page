import 'package:flutter/material.dart';
import 'package:pricing_front_page/screens/main_screen.dart';
import 'package:pricing_front_page/screens/pricing/pricing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zwap Pricing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreeen(),
    );
  }
}
