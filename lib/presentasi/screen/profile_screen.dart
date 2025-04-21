import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3F369A),
              Color(0xff070942),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white24,
                // backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Queenshafa Rania Bilqis',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Junior High School Student',
                style: TextStyle(
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 38),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: [
                    _buildProfileTile(
                      icon: Icons.travel_explore_rounded,
                      title: 'Your Journey',
                      subtitle: 'See your achievements and activities.',
                    ),
                    _buildProfileTile(
                      icon: Icons.emoji_events_rounded,
                      title: 'Trophies & Medals',
                      subtitle: 'List of awards you’ve won.',
                    ),
                    _buildProfileTile(
                      icon: Icons.event_available_rounded,
                      title: 'Events Attended',
                      subtitle: 'Workshops and events you joined.',
                    ),
                    _buildProfileTile(
                      icon: Icons.card_membership_rounded,
                      title: 'Certificates',
                      subtitle: 'All your earned certificates.',
                    ),
                    const SizedBox(height: 10),
                    _buildEditButton(),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 28),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'GabaritoSemiBold',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 11,
              color: Colors.white.withOpacity(0.7)),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded,
            color: Colors.white, size: 18),
        onTap: () {},
      ),
    );
  }

  Widget _buildEditButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: ListTile(
        leading: const Icon(Icons.person, color: Color(0xFF2B2890)),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontFamily: 'GabaritoSemiBold',
            fontSize: 14,
            color: Color(0xFF2B2890),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded,
            color: Color(0xFF2B2890), size: 18),
        onTap: () {},
      ),
    );
  }
}
