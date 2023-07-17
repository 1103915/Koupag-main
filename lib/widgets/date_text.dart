import 'package:flutter/material.dart';

class DateText extends StatelessWidget {
  const DateText({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
    );
  }
}
