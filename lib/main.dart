// ignore_for_file: prefer_const_constructors, empty_constructor_bodies, must_be_immutable, non_constant_identifier_names, unused_local_variable, unused_element

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          //we create colum and rows to build up a calculator

          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              userInput.toString(),
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          answer.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ]))),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Mycal(
                          title: 'AC',
                          color: Colors.orange,
                          onPress: () {
                            userInput = '';
                            setState(() {});
                          },
                        ),
                        Mycal(
                          title: '^',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '^';
                            setState(() {});
                          },
                        ),
                        Mycal(
                          title: '%',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        Mycal(
                          title: '/',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Mycal(
                                title: '7',
                                onPress: () {
                                  userInput += '7';
                                  setState(() {});
                                }),
                            Mycal(
                              title: '8',
                              onPress: () {
                                userInput += '8';
                                setState(() {});
                              },
                            ),
                            Mycal(
                              title: '9',
                              onPress: () {
                                userInput += '9';
                                setState(() {});
                              },
                            ),
                            Mycal(
                              title: '*',
                              color: Colors.orange,
                              onPress: () {
                                userInput += '*';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Mycal(
                              title: '4',
                              onPress: () {
                                userInput += '4';
                                setState(() {});
                              },
                            ),
                            Mycal(
                              title: '5',
                              onPress: () {
                                userInput += '5';
                                setState(() {});
                              },
                            ),
                            Mycal(
                              title: '6',
                              onPress: () {
                                userInput += '6';
                                setState(() {});
                              },
                            ),
                            Mycal(
                              title: '-',
                              color: Colors.orange,
                              onPress: () {
                                userInput += '-';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Mycal(
                                  title: '1',
                                  onPress: () {
                                    userInput += '1';
                                    setState(() {});
                                  },
                                ),
                                Mycal(
                                  title: '2',
                                  onPress: () {
                                    userInput += '2';
                                    setState(() {});
                                  },
                                ),
                                Mycal(
                                  title: '3',
                                  onPress: () {
                                    userInput += '3';
                                    setState(() {});
                                  },
                                ),
                                Mycal(
                                  title: '+',
                                  color: Colors.orange,
                                  onPress: () {
                                    userInput += '+';
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Mycal(
                                      title: '0',
                                      onPress: () {
                                        userInput += '0';
                                        setState(() {});
                                      },
                                    ),
                                    Mycal(
                                      title: '.',
                                      onPress: () {
                                        userInput += '.';
                                        setState(() {});
                                      },
                                    ),
                                    Mycal(
                                      title: 'DEL',
                                      onPress: () {
                                        userInput = userInput.substring(
                                            0, userInput.length - 1);
                                        setState(() {});
                                      },
                                    ),
                                    Mycal(
                                      title: '=',
                                      color: Colors.orange,
                                      onPress: () {
                                        equalpress();
                                        setState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

//mathmeticail equaltion functions to evalutae function
  void equalpress() {
    // String finaluserInput = userInput;
    //finaluserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}

//we create a component and constructor
class Mycal extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color;
  Mycal({
    super.key,
    required this.title,
    required this.onPress,
    this.color = const Color.fromARGB(138, 158, 178, 200),
  }) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: SafeArea(
            child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
        )),
      ),
    );
  }
}
