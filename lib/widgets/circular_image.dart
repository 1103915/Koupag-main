import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key, this.size = 70, required this.imagePath});
  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.white.withOpacity(0.4),
            width: 3,
          ),
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          isAntiAlias: true,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
