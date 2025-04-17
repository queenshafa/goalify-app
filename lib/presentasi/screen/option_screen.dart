import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Schedule & Goals',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Gabarito',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff3A3393),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 100),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3F369A), Color(0xff070942)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 370,
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
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w600,
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
                    fontFamily: 'Gabarito',
                    fontWeight: FontWeight.w500,
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
                  minimumSize: const Size(260, 48),
                ),
                child: const Text(
                  'Add Goals',
                  style: TextStyle(
                    fontFamily: 'Gabarito',
                    fontWeight: FontWeight.w500,
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
