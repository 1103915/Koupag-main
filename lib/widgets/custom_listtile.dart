import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.ontap});

  final IconData icon;
  final String title;
  final String subTitle;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: ontap,
        child: ListTile(
          leading: Icon(
            icon,
            size: 40,
          ),
          title: Text(title),
          subtitle: Text(
            subTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
