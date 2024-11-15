import 'package:flutter/material.dart';
import 'package:testapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: change the main page, implement logic
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
