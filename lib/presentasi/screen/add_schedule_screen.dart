import 'package:flutter/material.dart';

class AddScheduleScreen extends StatelessWidget {
  const AddScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Schedule',
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
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3F369A), Color(0xff070942)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
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
                      const Text(
                        'Add Schedule',
                        style: TextStyle(
                          fontFamily: 'GabaritoSemiBold',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Title',
                        style: TextStyle(
                          fontFamily: 'GabaritoMedium',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const CustomTextField(
                        hintText: 'Ex. Lorem Ipsum Meeting',
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Time',
                        style: TextStyle(
                          fontFamily: 'GabaritoMedium',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Expanded(
                            child: CustomTextField(hintText: '  :'),
                          ),
                          const SizedBox(width: 10),
                          ToggleButtons(
                            isSelected: const [true, false],
                            borderRadius: BorderRadius.circular(30),
                            fillColor: Colors.white,
                            selectedColor: const Color(0xFF171764),
                            color: Colors.white,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text('AM'),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text('PM'),
                              ),
                            ],
                            onPressed: (index) {},
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'GabaritoMedium',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const CustomTextField(
                        hintText: 'Ex. Discussing about Revolution of GTA',
                        maxLines: 3,
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Color(0xFF00FFD1), Color(0xFF005DAA)],
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Add Schedule',
                              style: TextStyle(
                                fontFamily: 'GabaritoSemiBold',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
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
