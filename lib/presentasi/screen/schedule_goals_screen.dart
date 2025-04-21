import 'package:flutter/material.dart';

class ScheduleGoalsScreen extends StatelessWidget {
  const ScheduleGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Schedule & Goals',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Gabarito',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xff352B70).withOpacity(0.9),
                const Color(0xffF04F54),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, size: 30, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/options');
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3F369A), Color(0xff070942)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Your Schedule",
                    style: TextStyle(
                      fontFamily: "Gabarito",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                _buildScheduleItem(),
                _buildScheduleItem(),
                const SizedBox(height: 24),
                const Text(
                  "Your Goals",
                  style: TextStyle(
                    fontFamily: "Gabarito",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                _buildGoalItem(),
                _buildGoalItem(),
                _buildGoalItem(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff372563).withOpacity(0.5),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lorem Ipsum Meeting",
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "1:00PM - 2:20PM",
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const Text(
                "Discussing about PPN 12% in 2027",
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                color: Colors.white, size: 25),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildGoalItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "UJIKOM Discussion",
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "1 Jan - 28 Dec",
                  style: TextStyle(
                    fontFamily: "Gabarito",
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Discussing about UJIKOM Timeline in 2027",
            style: TextStyle(
              fontFamily: "Gabarito",
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 16),

          // Progress Bar
          LayoutBuilder(
            builder: (context, constraints) {
              double progress = 0.35;
              return Stack(
                children: [
                  Container(
                    height: 20,
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: constraints.maxWidth * progress,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 12),
                    child: const Text(
                      "35%",
                      style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 16),

          // Subtasks + Actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white30),
                ),
                child: const Row(
                  children: [
                    Text(
                      "8 Sub tasks",
                      style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () {
                        // Delete action
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.check, color: Colors.white),
                      onPressed: () {
                        // Check action
                      },
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
