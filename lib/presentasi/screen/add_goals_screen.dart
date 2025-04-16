import 'package:flutter/material.dart';

class AddGoalsScreen extends StatelessWidget {
  const AddGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final subtaskController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF0E0B36),
      appBar: AppBar(
        title: const Text(
          'Add Goal',
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
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff3F369A), Color(0xff070942)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: 370,
                  decoration: BoxDecoration(
                    color: const Color(0xff121253).withOpacity(0.8),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      _buildLabel('Title'),
                      const SizedBox(height: 8),
                      CustomTextField(
                        hintText: 'Ex: UJIKOM 2025',
                        controller: titleController,
                      ),
                      const SizedBox(height: 16),
                      _buildLabel('Date'),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          _buildDateField('00'),
                          const SizedBox(width: 8),
                          _buildDateField('00'),
                          const SizedBox(width: 8),
                          _buildDateField('0000'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildLabel('Subtasks'),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              hintText: 'Add Subtask',
                              controller: subtaskController,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF373AC5),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // todo: logic add subtask
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildLabel('Description'),
                      const SizedBox(height: 8),
                      CustomTextField(
                        hintText: 'Ex. GTA 7 Development',
                        controller: descriptionController,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 32),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              // todo: logic submit
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              backgroundColor: const Color(0xFF00C897),
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Add Goal',
                              style: TextStyle(
                                fontFamily: 'GabaritoMedium',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'GabaritoSemiBold',
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }

  Widget _buildDateField(String hint) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff372563).withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
        ),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white),
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int maxLines;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.maxLines = 1,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: const Color(0xff372563).withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines,
        style: const TextStyle(
          fontFamily: 'Gabarito',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
    );
  }
}
