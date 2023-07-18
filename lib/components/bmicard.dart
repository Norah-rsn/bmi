import 'package:flutter/material.dart';

class BmiCardInfo extends StatelessWidget {
  const BmiCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFF9671), Color(0xffE57B89)]),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 207, 207, 207).withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 3,
              offset: const Offset(4, 8),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.0),
          child: Center(
            child: Text(
              'Body mass index, or BMI is a measure of body fat based on height and weight that applies to adult men and women.',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                        color: Color(0xffFF9671),
                        blurRadius: 6,
                        offset: Offset(1, 3))
                  ]),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
