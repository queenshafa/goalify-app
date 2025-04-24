import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:goalify/presentasi/screen/home_screen.dart';
// import 'package:goalify/utils/color_constant.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/onboarding_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: demo_data.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ...List.generate(
                demo_data.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: DotIndicator(isActive: index == _pageIndex),
                    )),
          ]),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF363686),
                  Color(0xFF5353CE)
                ], // Warna gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius:
                  BorderRadius.circular(50), // Sesuaikan dengan tombol
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(345, 64),
                backgroundColor:
                    Colors.transparent, // Transparan agar gradient terlihat
                shadowColor: Colors.transparent, // Hilangkan bayangan
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      50), // Bentuk tombol sesuai Container
                ),
              ),
              onPressed: () {
                if (_pageIndex < demo_data.length - 1) {
                  _pageController.nextPage(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 400),
                  );
                } else {
                  Navigator.pushNamed(context, '/signInScreen');
                }
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signInScreen');
            },
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Gabarito',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      )),
    ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 36 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
      image: 'assets/images/onboarding_1.png',
      title: 'Achieve Your Goals!',
      description:
          'Stay focused on your goals and reach your dreams easier! We\'re here to help you grow and succeed.'),
  Onboard(
      image: 'assets/images/onboarding_2.png',
      title: 'Be a Champion!',
      description:
          'Become a champion in your field! Discover features that will help you improve your skills and achieve greatness.'),
  Onboard(
      image: 'assets/images/onboarding_3.png',
      title: 'Join Exciting Events!',
      description:
          'Take part in exciting events and expand your network! Don’t miss the chance to learn and connect with amazing people.'),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 85,
        ),
        Image.asset(
          image,
          height: 400,
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(colors: [
                Color(0xff615ADB),
                Color(0xff343075).withOpacity(0)
              ])),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Gabarito',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
