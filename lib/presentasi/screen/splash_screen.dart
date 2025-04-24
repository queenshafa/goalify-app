import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboardingScreen');
    }); //
    return Material(
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff3F369A), Color(0xff070942)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
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
                'Let your goals roar louder than your fears!',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
