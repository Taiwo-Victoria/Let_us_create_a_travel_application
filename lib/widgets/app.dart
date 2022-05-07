import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double? size;
  late final String text;
  late final Color color;

  AppText({
    Key? key,
    this.size = 20,
    required this.text,
    this.color = Colors.black54,
  }) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
