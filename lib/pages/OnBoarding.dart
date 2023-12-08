import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Iqrv",
          style: TextStyle(
            color: Color(0xFF16161A),
            fontSize: 20,
            fontFamily: 'Baloo',
            fontWeight: FontWeight.w800,
            height: 0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            // width: 400,

            height: 500,
            child: Center(
                child: Image(
              image: AssetImage('lib/assests/images/Onboarding.png'),
            )),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF16161A),
              width: 430,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expecto Patronum",
                          style: TextStyle(
                            color: Color(0xFFFFFFFE),
                            fontSize: 34,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 1.0,
                            letterSpacing: -0.68,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod ',
                            style: TextStyle(
                              color: Color(0xFF94A1B2),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.3,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () => {},
                                child: null,
                                style: ElevatedButton.styleFrom(
                                  primary: (Color(0xFF2CB67D)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  minimumSize: Size(1.1, 10.1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 150.0),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: Text('Continue'),
                                  style: ElevatedButton.styleFrom(
                                    primary: (Color(0xFF2CB67D)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    minimumSize: Size(162, 50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
