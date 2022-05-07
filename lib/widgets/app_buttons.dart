import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:let_practice/widgets/app.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  String? text;
  IconData? icon;
  double size;
  final Color borderColor;
  bool? isIcon;
  AppButtons(
      {Key? key,
      this.isIcon = false,
      required this.size,
      this.text = 'hi',
      this.icon,
      required this.color,
      required this.backgroundcolor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundcolor,
      ),
      child: isIcon == false
          ? Center(child: AppText(
              text: text!,
              color: color,
            ),)
          : Center(child:Icon(icon, color: color)),
    );
  }
}
