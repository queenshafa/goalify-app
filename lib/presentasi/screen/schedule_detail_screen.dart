import 'package:flutter/material.dart';

class ScheduleDetailScreen extends StatelessWidget {
  const ScheduleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C66), // background biru gelap
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),

            // Title
            const Text(
              'Schedule Detail',
              style: TextStyle(
                fontFamily: 'GabaritoBold',
                fontSize: 20,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 32),

            // Card detail
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // back arrow
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    const SizedBox(height: 12),

                    // Title box
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'Lorem Ipsum Meeting',
                        style: TextStyle(
                          fontFamily: 'GabaritoSemiBold',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Time
                    const Text(
                      '1:00 PM - 2:20 PM',
                      style: TextStyle(
                        fontFamily: 'GabaritoMedium',
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Description
                    const Text(
                      'Discussing about PPN 12% in 2027',
                      style: TextStyle(
                        fontFamily: 'GabaritoMedium',
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Done Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                              context); // nanti bisa ubah ke logic "mark as done"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF00A98F), // gradasi bisa diganti
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                        ),
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontFamily: 'GabaritoSemiBold',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
