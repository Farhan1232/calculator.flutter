import 'package:flutter/material.dart';
import '../widgets/Custom_text.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 155, top: 68),
            child: const Text(
              "Sign up",
              style: TextStyle(
                color: Color(0xFF16161A),
                fontSize: 28,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.56,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 150,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(label: "First name"),
                CustomTextField(label: "Last name"),
                CustomTextField(
                  label: "Phone number",
                  isPhoneNumber: true,
                ),
                CustomTextField(label: "Password"),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        primary: (Color(0xFF2CB67D)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        minimumSize: Size(390, 50),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 90, top: 28),
                  child: Row(
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF16161A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Text(
                        ' Login',
                        style: TextStyle(
                          color: Color(0xFF2CB67D),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
