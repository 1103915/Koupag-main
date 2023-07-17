import 'package:flutter/material.dart';
import 'package:koupag/widgets/heading_text.dart';

//A custom appbar wigdet for out app

class KoupagAppbar extends StatelessWidget implements PreferredSizeWidget {
  const KoupagAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: HeadingText(text: title),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
