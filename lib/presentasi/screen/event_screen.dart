import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:goalify/presentasi/widget/event_card';
import 'package:goalify/presentasi/widget/filter_button.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

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
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/event_1.png'),
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
              const EventCard(
                imagePath: 'assets/images/ic_icomfest.png',
                title: 'Google Developer Groups',
                description: 'General',
                price: 'Free',
                date: '26 Januari, 2025',
                location: 'Bekasi',
              ),
              const SizedBox(height: 10),
              const EventCard(
                imagePath: 'assets/images/ic_icomfest.png',
                title: 'Google Developer Groups',
                description: 'General',
                price: 'Free',
                date: '26 Januari, 2025',
                location: 'Bekasi',
              ),
              const SizedBox(height: 10),
              const EventCard(
                imagePath: 'assets/images/ic_icomfest.png',
                title: 'Google Developer Groups',
                description: 'General',
                price: 'Free',
                date: '26 Januari, 2025',
                location: 'Bekasi',
              ),
              const SizedBox(height: 10),
              const EventCard(
                imagePath: 'assets/images/ic_icomfest.png',
                title: 'Google Developer Groups',
                description: 'General',
                price: 'Free',
                date: '26 Januari, 2025',
                location: 'Bekasi',
              ),
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
