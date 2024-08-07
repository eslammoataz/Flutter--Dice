import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            Color.fromARGB(255, 12, 32, 148),
            Color.fromARGB(255, 55, 81, 230),
            Color.fromARGB(255, 21, 21, 122)
          ],
        ),
      ),
    );
  }
}
