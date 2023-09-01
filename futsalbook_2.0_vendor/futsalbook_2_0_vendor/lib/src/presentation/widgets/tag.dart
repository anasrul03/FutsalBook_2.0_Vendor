import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final Color color;
  final String text;
  final TextStyle textStyle;
  const Tag({
    super.key,
    required this.color,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      height: 20,
      width: 80,
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
