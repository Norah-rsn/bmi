import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpress;

  const RoundedBtn({super.key, required this.icon, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        onPressed: onpress,
        elevation: 8,
        constraints: const BoxConstraints.tightFor(height: 52, width: 52),
        shape: const CircleBorder(),
        fillColor: const Color(0xFFFF9671),
        child: Icon(icon, size: 15),
      ),
    );
  }
}
