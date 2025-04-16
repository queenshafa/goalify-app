import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0B36),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Schedule & Goals',
          style: TextStyle(
            fontFamily: 'GabaritoBold',
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xFF1C1A57),
            border: Border.all(color: Colors.white24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Choose One',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'GabaritoSemiBold',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addSchedule');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF262A90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  minimumSize: const Size(180, 48),
                ),
                child: const Text(
                  'Add Schedule',
                  style: TextStyle(
                    fontFamily: 'GabaritoMedium',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addGoals');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF373AC5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  minimumSize: const Size(180, 48),
                ),
                child: const Text(
                  'Add Goals',
                  style: TextStyle(
                    fontFamily: 'GabaritoMedium',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
