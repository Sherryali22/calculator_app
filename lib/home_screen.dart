import 'dart:math';

import 'package:calculator_app/result_screen.dart';
import 'package:calculator_app/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  int age = 22;
  int weight = 70;
  int height = 160;
  bool ismale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0c21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0c21),
        title: const Text(
          'calculater',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              (ismale) ? Color(0xffeb1555) : Color(0xff1de33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_rounded,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                'male',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                (ismale) ? Color(0xff1de33) : Color(0xffeb1555),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female_rounded,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                'female',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xff1de33),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 39,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            max: 200,
                            min: 120,
                            activeColor: Color(0xffeb1555),
                            inactiveColor: Color(0xff525365),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            }),
                      ]),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1de33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color(0xff4b4e5d)),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color(0xff4b4e5d)),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff1de33),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'weight',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color(0xff4b4e5d)),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color(0xff4b4e5d)),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            custombutton(
              text: 'calculate',
              onPressed: () {
                double heightInMeter = height / 100;
                double result = weight / (heightInMeter * heightInMeter);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResultScreen(
                          result:result,
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
