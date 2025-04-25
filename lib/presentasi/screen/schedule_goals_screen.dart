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
                _buildScheduleItem(
                  title: "Design Review",
                  time: "10:00AM - 11:00AM",
                  description: "Finalizing UI/UX before launch",
                ),
                _buildScheduleItem(
                  title: "Team Standup",
                  time: "1:00PM - 1:30PM",
                  description: "Daily sync-up with development team",
                ),
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
                _buildGoalItem(
                    title: 'Personal Branding',
                    description: 'Creating Personal Branding for my future',
                    dateRange: '1 Jan - 28 Dec',
                    progress: 0.35,
                    subTasks: 10),
                _buildGoalItem(
                  title: "Finish Landing Page",
                  description: "Implement UI and animation for homepage",
                  dateRange: "15 Apr - 30 Apr",
                  progress: 0.6,
                  subTasks: 5,
                ),
                _buildGoalItem(
                    title: 'Portfolio',
                    description: 'Finishing Portfolio',
                    dateRange: '4 August - 28 August',
                    progress: 0.7,
                    subTasks: 10),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleItem({
    required String title,
    required String time,
    required String description,
  }) {
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
              Text(
                title,
                style: const TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              Text(
                description,
                style: const TextStyle(
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

  Widget _buildGoalItem({
    required String title,
    required String description,
    required String dateRange,
    required double progress,
    required int subTasks,
  }) {
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
              Text(
                title,
                style: const TextStyle(
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
                child: Text(
                  dateRange,
                  style: const TextStyle(
                    fontFamily: "Gabarito",
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontFamily: "Gabarito",
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
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
                    child: Text(
                      "${(progress * 100).toInt()}%",
                      style: const TextStyle(
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
                child: Row(
                  children: [
                    Text(
                      "$subTasks Sub tasks",
                      style: const TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.white),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
