import 'package:flutter/material.dart';

class flash extends StatelessWidget {
  const flash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Iqrv",
        style: TextStyle(
          color: Color(0xFF16161A),
          fontSize: 36,
          fontFamily: 'Baloo',
          fontWeight: FontWeight.w800,
          height: 0,
        ),
      )),
    );
  }
}
