import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:catsvsdogs/home.dart';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return  Container(child: AnimatedSplashScreen(splash: Text('leee'), nextScreen: Home()));
  }
}