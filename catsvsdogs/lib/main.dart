import 'package:catsvsdogs/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Cat vs dog",
      home: MySplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
