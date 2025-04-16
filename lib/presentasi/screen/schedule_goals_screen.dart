import 'package:flutter/material.dart';

class ScheduleGoalsScreen extends StatelessWidget {
  const ScheduleGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF1E1E6D), // warna background sesuai desain
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Schedule & Goals",
          style: TextStyle(
            fontFamily: "GabaritoBold",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/images/addbutton.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Schedule",
              style: TextStyle(
                fontFamily: "GabaritoSemiBold",
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            _buildScheduleItem(),
            _buildScheduleItem(),
            const SizedBox(height: 24),
            const Text(
              "Your Goals",
              style: TextStyle(
                fontFamily: "GabaritoSemiBold",
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  _buildGoalItem(),
                  _buildGoalItem(),
                  _buildGoalItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem Ipsum Meeting",
                style: TextStyle(
                  fontFamily: "GabaritoMedium",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "1:00PM - 2:20PM",
                style: TextStyle(
                  fontFamily: "GabaritoMedium",
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              Text(
                "Discussing about PPN 12% in 2027",
                style: TextStyle(
                  fontFamily: "GabaritoMedium",
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/detailbutton.png',
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget _buildGoalItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "UJIKOM Discussion",
            style: TextStyle(
              fontFamily: "GabaritoMedium",
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Discussing about UJIKOM Timeline in 2027",
            style: TextStyle(
              fontFamily: "GabaritoMedium",
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: 0.35,
            backgroundColor: Colors.white24,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "8 Sub tasks",
                style: TextStyle(
                  fontFamily: "GabaritoMedium",
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/trashbutton.png',
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(width: 12),
                  Image.asset(
                    'assets/images/checkbutton.png',
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
