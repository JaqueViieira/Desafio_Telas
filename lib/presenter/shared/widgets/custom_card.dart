import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color cardColor;

  const CustomCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: cardColor,
      ),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          icon,
          const SizedBox(
            height: 25,
          ),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
