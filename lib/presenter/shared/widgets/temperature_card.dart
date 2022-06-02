import 'package:flutter/material.dart';

class TemperatureCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color cardColor;
  final String? bodyText;
  final double? fontSize;
  final double? padding;

  const TemperatureCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.cardColor,
    this.bodyText,
    this.fontSize,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: cardColor,
      ),
      padding: EdgeInsets.all(
        padding ?? 0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              icon,
              const SizedBox(
                height: 25,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Text(
              bodyText ?? "",
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
