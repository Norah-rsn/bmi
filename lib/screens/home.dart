import 'package:bmi/components/bmicard.dart';
import 'package:bmi/methods/calBMI.dart';
import 'package:bmi/screens/resuls.dart';
import 'package:flutter/material.dart';
import 'package:bmi/components/reuseablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/roundedbtn.dart';

enum GenderSelection { Male, Female }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final inActiveColor = const Color(0xFFFDFDFD); //0xFFBF6DB4 Color(0xFFFDFDFD)
  final activeColor = const Color.fromARGB(217, 255, 151, 113); //0x4FBF6DB4
  GenderSelection? selection;
  int _height = 150;
  int _weight = 65;
  int _age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'BMI Calculator',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )),
      body: SafeArea(
        child: Column(
          children: [
            BmiCardInfo(),
            Row(
              children: [
                ReUseableCard(
                  color: selection == GenderSelection.Male
                      ? activeColor
                      : inActiveColor,
                  myChild: Container(
                    height: 50,
                    child: const Center(
                      child: Text(
                        'MALE',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onpress: () {
                    setState(() {
                      selection = GenderSelection.Male;
                    });
                  },
                ),
                ReUseableCard(
                  color: selection == GenderSelection.Male
                      ? inActiveColor
                      : activeColor,
                  myChild: Container(
                    height: 50,
                    child: const Center(
                      child: Text(
                        'FEMALE',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onpress: () {
                    setState(() {
                      selection = GenderSelection.Female;
                    });
                  },
                ),
              ],
            ),
            ReUseableCard(
              color: const Color(0xFFFDFDFD),
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text('HEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        child: Text(
                          _height.toString(),
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: const Text('cm'),
                      )
                    ],
                  ),
                  Container(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          trackHeight: 2,
                          activeTrackColor: Colors.black87,
                          inactiveTrackColor: Colors.black12,
                          thumbColor: const Color(0xffFF9671),
                          overlayColor: const Color(0x35FF9771),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                        max: 200,
                        min: 100,
                        onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.toInt().round();
                          });
                        },
                        value: _height.toDouble(),
                      ),
                    ),
                  )
                ],
              ),
              onpress: () {},
            ),
            Expanded(
              child: Row(
                children: [
                  ReUseableCard(
                    color: const Color(0xFFFDFDFD),
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text('WEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Container(
                              child: Text(
                                _weight.toString(),
                                style: const TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: const Text('kg'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedBtn(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    _weight--;
                                  });
                                }),
                            const SizedBox(
                              width: 8,
                            ),
                            RoundedBtn(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    _weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    onpress: () {},
                  ),
                  ReUseableCard(
                    color: const Color(0xFFFDFDFD),
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text('AGE',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Container(
                              child: Text(
                                _age.toString(),
                                style: const TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: const Text('yr'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedBtn(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    _age--;
                                  });
                                }),
                            const SizedBox(
                              width: 8,
                            ),
                            RoundedBtn(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    _age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    onpress: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                CalculateBMI calculateBMI =
                    CalculateBMI(h: _height, w: _weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => ResultScreen(
                              bmi: calculateBMI.calculateBMI(),
                              result: calculateBMI.getResult(),
                              colorresult: calculateBMI.getColor(),
                            )));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF9671),
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            )
          ],
        ),
      ),
    );
  }
}
