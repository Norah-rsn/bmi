import 'package:bmi/components/bmicard.dart';
import 'package:bmi/components/reuseablecard.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String bmi;
  final String result;
  final Color colorresult;

  const ResultScreen(
      {super.key,
      required this.bmi,
      required this.result,
      required this.colorresult});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BmiCardInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: Container(
              child: const Text(
                'Result',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ReUseableCard(
            color: const Color(0xFFFDFDFD),
            myChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Your BMI is:',
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                ),
                Text(
                  widget.bmi,
                  style: const TextStyle(
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Text(
                    widget.result,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: widget.colorresult),
                  ),
                ),
              ],
            ),
            onpress: () {},
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9671),
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero)),
            child: const Text(
              'ReCalculat',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
          )
        ],
      ),
    );
  }
}
