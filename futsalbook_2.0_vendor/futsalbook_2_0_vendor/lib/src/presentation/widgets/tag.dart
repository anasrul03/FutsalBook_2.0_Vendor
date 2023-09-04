import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final Color color;
  final String text;
  final TextStyle textStyle;
  final double width;
  final double height;
  const Tag(
      {super.key,
      required this.color,
      required this.text,
      required this.textStyle,
      this.width = 90,
      this.height = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
