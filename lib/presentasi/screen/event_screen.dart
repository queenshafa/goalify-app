import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:goalify/data/event_data.dart';
import 'package:goalify/presentasi/widget/event_card.dart';
import 'package:goalify/presentasi/widget/filter_button.dart';

class EventScreen extends StatelessWidget {
  final List<Map<String, String>> allEvents = [
    ...getDataEvents("INTI Universe 2025"),
    ...getDataEvents("CSID 2025"),
    ...getDataEvents("DTI-CX 2025"),
    ...getDataEvents("TECH 2025"),
    ...getDataEvents("IDTEx 2025"),
  ];
  EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Events!',
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Gabarito',
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xff352B70).withOpacity(0.9),
                const Color(0xff33C2A4)
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: [
              const SizedBox(height: 40),
              CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 0.6,
                ),
                items: List.generate(5, (index) {
                  // Create a list of image paths
                  List<String> imagePaths = [
                    'assets/images/event_1.png',
                    'assets/images/csid_events.png',
                    'assets/images/dticx_events.png',
                    'assets/images/inti_universe_events.png',
                    'assets/images/tech2025_events.png',
                  ];

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePaths[
                              index]), // Use the index to select the correct image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  height: 35,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff615ADB),
                        const Color(0xff343075).withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: const Text(
                    'Deadline',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gabarito',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterButton(text: 'Today'),
                    FilterButton(text: 'Next Week'),
                    FilterButton(text: 'Next Month'),
                    FilterButton(text: 'More'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ...allEvents.map((event) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail',
                        arguments: event, // <- This sends the event
                      );
                    },
                    child: EventCard(
                      imagePath: event['image'] ?? '',
                      title: event['title'] ?? '',
                      description: 'General',
                      price: 'Free',
                      date: event['Event date'] ?? '',
                      location: event['address'] ?? '',
                    ),
                  ),
                );
              }).toList(),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
