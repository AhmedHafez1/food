import 'package:flutter/material.dart';

class AhTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const AhTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
            width: 2.0,
          ),
        ),
      ),

      style: TextStyle(
        color: Theme.of(
          context,
        ).colorScheme.inversePrimary, // Changes the input text color
        fontSize: 17, // Optional: adjust font size
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
