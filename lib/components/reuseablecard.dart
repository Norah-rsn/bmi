import 'package:flutter/material.dart';

class ReUseableCard extends StatelessWidget {
  final Color color;
  final Widget myChild;
  final VoidCallback onpress;

  const ReUseableCard(
      {super.key,
      required this.color,
      required this.myChild,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 207, 207, 207).withOpacity(0.5),
                spreadRadius: 0.1,
                blurRadius: 3,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: myChild,
        ),
      ),
    ));
  }
}
