import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text[0],
          style: color != null
              ? TextStyle(
                  color: color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              : const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
        ),
        Text(
          text.replaceFirst(RegExp(text[0]), ''),
          style: color != null
              ? TextStyle(
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )
              : const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
        ),
      ],
    );
  }
}
