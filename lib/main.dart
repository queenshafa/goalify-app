import 'package:flutter/material.dart';
import 'package:goalify/presentasi/screen/add_goals_screen.dart';
import 'package:goalify/presentasi/screen/add_schedule_screen.dart';
import 'package:goalify/presentasi/screen/competition_detail_screen.dart';
import 'package:goalify/presentasi/screen/competition_registration.dart';
import 'package:goalify/presentasi/screen/competition_screen.dart';
import 'package:goalify/presentasi/screen/event_detail_screen.dart';
import 'package:goalify/presentasi/screen/event_screen.dart';
import 'package:goalify/presentasi/screen/home.dart';
import 'package:goalify/presentasi/screen/home_screen.dart';
import 'package:goalify/presentasi/screen/onboarding_screen.dart';
import 'package:goalify/presentasi/screen/option_screen.dart';
import 'package:goalify/presentasi/screen/profile_screen.dart';
import 'package:goalify/presentasi/screen/schedule_detail_screen.dart';
import 'package:goalify/presentasi/screen/schedule_goals_screen.dart';
import 'package:goalify/presentasi/screen/sign_in_screen.dart';
import 'package:goalify/presentasi/screen/sign_up_screen.dart';
import 'package:goalify/presentasi/screen/splash_screen.dart';
import 'package:goalify/presentasi/screen/testhome.dart';
import 'package:goalify/presentasi/widget/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Gabarito',
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboardingScreen': (context) => const OnboardingScreen(),
        '/signInScreen': (context) => const SignInScreen(),
        '/signUpScreen': (context) => const SignUpScreen(),
        // '/homeScreen': (context) => const HomeScreen(),
        '/schedule&goals': (context) => const ScheduleGoalsScreen(),
        '/options': (context) => const OptionScreen(),
        '/addSchedule': (context) => const AddScheduleScreen(),
        '/addGoals': (context) => const AddGoalsScreen(),
        '/competitionScreen': (context) => const CompetitionScreen(),
        '/competitionDetailScreen': (context) =>
            const CompetitionDetailScreen(),
        '/registration': (context) => const CompetitionRegistration(),
        '/eventScreen': (context) => const EventScreen(),
        '/detail': (context) => const EventDetailScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/mainLayout': (context) => const NavBar()
      },
    );
  }
}
