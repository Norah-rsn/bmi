import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  const iconWithLabel({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Icon(
            FontAwesomeIcons.mars,
            size: 80,
          ),
        ),
        Container(
          child: Text(label),
        )
      ],
    );
  }
}
