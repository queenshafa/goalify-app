import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff3F369A), Color(0xff070942)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: _buildOptionCard(context),
    );
  }

  Widget _buildOptionCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 370,
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff121253).withOpacity(0.8),
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Choose One',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Gabarito',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
          _buildOptionButton(
            context,
            label: 'Add Schedule',
            route: '/addSchedule',
            color: const Color(0xFF262A90),
          ),
          const SizedBox(height: 16),
          _buildOptionButton(
            context,
            label: 'Add Goals',
            route: '/addGoals',
            color: const Color(0xFF373AC5),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(
    BuildContext context, {
    required String label,
    required String route,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: const Size(300, 60),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Gabarito',
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
