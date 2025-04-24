import 'package:flutter/material.dart';
import 'package:goalify/presentasi/widget/custom_text_box.dart'; // pastikan path sesuai

class CompetitionRegistration extends StatefulWidget {
  const CompetitionRegistration({super.key});

  @override
  State<CompetitionRegistration> createState() =>
      _CompetitionRegistrationState();
}

class _CompetitionRegistrationState extends State<CompetitionRegistration> {
  bool isExpanded = false;
  bool isCheckedRules = false;
  bool isCheckedConfirm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        decoration: _buildBackgroundGradient(),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._buildTextFields(),
              const SizedBox(height: 24),
              _buildLabel('Competition Category'),
              const SizedBox(height: 8),
              _buildCategoryDropdown(),
              const SizedBox(height: 12),
              _buildCheckbox(
                value: isCheckedConfirm,
                onChanged: (val) => setState(() => isCheckedConfirm = val!),
                text:
                    'I declare that all the information provided is true and accurate.',
              ),
              const SizedBox(height: 8),
              _buildCheckbox(
                value: isCheckedRules,
                onChanged: (val) => setState(() => isCheckedRules = val!),
                text:
                    'I agree to follow all the rules and requirements set by the committee.',
              ),
              const SizedBox(height: 50),
              _buildRegisterButton(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- UI Sections ----------

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
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
        icon:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  BoxDecoration _buildBackgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xff3F369A), Color(0xff070942)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  List<Widget> _buildTextFields() {
    return [
      _buildLabel('Full Name'),
      const CustomTextBox(hintText: 'Your name..'),
      const SizedBox(height: 24),
      _buildLabel('Instances'),
      const CustomTextBox(hintText: 'Your instances..'),
      const SizedBox(height: 24),
      _buildLabel('Grade/Class'),
      const CustomTextBox(hintText: 'Your grade/class..'),
      const SizedBox(height: 24),
      _buildLabel('Active WhatsApp/Phone Number'),
      const CustomTextBox(hintText: 'Your WhatsApp/Phone number..'),
      const SizedBox(height: 24),
      _buildLabel('Active Email Address'),
      const CustomTextBox(hintText: 'Your email address..'),
    ];
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'Gabarito',
        color: Colors.white,
      ),
    );
  }

  Widget _buildCategoryDropdown() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff372563).withOpacity(0.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose your competition!',
                  style: TextStyle(
                    fontFamily: 'Gabarito',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
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
      width: 400,
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

  Widget _buildCheckbox({
    required bool value,
    required String text,
    required Function(bool?) onChanged,
  }) {
    return Row(
      children: [
        Checkbox(
          value: value,
          activeColor: Colors.purple,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Gabarito',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff2A2579),
        side: BorderSide(color: Colors.white.withOpacity(0.3), width: 2),
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {
        // Handle registration action
      },
      child: const Text(
        'Register Now!',
        style: TextStyle(
          fontFamily: 'Gabarito',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
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
