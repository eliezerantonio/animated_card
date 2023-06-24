import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.text, this.withOpacity, this.fontSize});
  final String text;
  bool? withOpacity = false;
  double? fontSize = 14;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white.withOpacity(withOpacity == true ? 0.5 : 1.0),
        fontSize: fontSize ?? 14,
      ),
    );
  }
}
