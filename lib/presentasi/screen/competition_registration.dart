import 'package:flutter/material.dart';
import 'package:goalify/presentasi/widget/custom_text_field.dart';

class CompetitionRegistration extends StatefulWidget {
  const CompetitionRegistration({super.key});

  @override
  State<CompetitionRegistration> createState() =>
      _CompetitionRegistrationState();
}

class _CompetitionRegistrationState extends State<CompetitionRegistration> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registration',
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
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3F369A), Color(0xff070942)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Full Name',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                  hintText: 'Your name..', icon: Icons.person),
              const SizedBox(height: 24),
              const Text(
                'Instances',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                  hintText: 'Your instances..', icon: Icons.school),
              const SizedBox(height: 24),
              const Text(
                'Grade/Class',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                  hintText: 'Your grade/class..', icon: Icons.category),
              const SizedBox(height: 24),
              const Text(
                'Active WhatsApp/Phone Number',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                  hintText: 'Your WhatsApp/Phone number..',
                  icon: Icons.phone_android),
              const SizedBox(height: 24),
              const Text(
                'Active Email Address',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                  hintText: 'Your email address..', icon: Icons.email),
              const SizedBox(height: 24),
              const Text(
                'Competition Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gabarito',
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              _buildCategorySection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Container(
            width: 370,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff8C93FB), width: 1),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose your competition!',
                  style: TextStyle(
                    fontFamily: 'Gabarito',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) ...[
          const SizedBox(height: 8),
          _categoryItem('UI/UX Application', 'Middle School'),
          _categoryItem('Web Design', 'High School'),
          _categoryItem('Design Poster', 'High School'),
        ],
      ],
    );
  }

  Widget _categoryItem(String title, String level) {
    return Container(
      width: 370,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: _glassCardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            level,
            style: TextStyle(
              fontFamily: 'Gabarito',
              fontSize: 13,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _glassCardDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      border: Border.all(color: Colors.white.withOpacity(0.5)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
