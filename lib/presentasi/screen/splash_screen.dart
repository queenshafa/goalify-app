import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/onboardingScreen');
    // }); //
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff343075), Color(0xff615ADB)],
                  stops: [0.38, 0.95],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Image.asset(
                'assets/images/logo_goalify.png',
              ),
              const SizedBox(
                height: 280,
              ),
              const Text(
                'ajkndjnj',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
