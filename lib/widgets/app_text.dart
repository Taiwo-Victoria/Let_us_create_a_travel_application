import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double? size;
  late final String text;
  late final Color color;

  AppLargeText({
   Key? key,
     this.size = 30,
   required this.text,
    this.color = Colors.black,
}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}