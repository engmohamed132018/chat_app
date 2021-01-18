import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final Alignment alignment;
  final FontWeight fontWeight;

  const CustomeText(
      {this.text,
      this.size = 14.0,
      this.color = Colors.black,
      this.alignment = Alignment.center,
      this.fontWeight = FontWeight.normal});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          decoration: text == "REgisterNow" ? TextDecoration.underline : null,
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
