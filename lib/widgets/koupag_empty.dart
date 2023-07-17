import 'package:flutter/material.dart';

class KoupagEmpty extends StatelessWidget {
  const KoupagEmpty({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/empty.png',
            fit: BoxFit.fitWidth,
            cacheHeight: 240,
            cacheWidth: 240,
          ),
          Text(
            "Oops!!!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
