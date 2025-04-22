import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int maxLines;
  final TextEditingController? controller;

  const CustomTextBox({
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
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
    );
  }
}
