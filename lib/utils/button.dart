import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color.fromARGB(255, 34, 34, 34),
      elevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      disabledElevation: 0,
      hoverElevation: 0,
      child: Text(text,style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),)),
    );
  }
}