import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(
              color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {print("clicked button")},
                  child: Text('waleed')),
              Text('waleed'),
              InkWell(
                onLongPress: () => {print("longpress")},
                onTap: () => {print("on tap")},
                onDoubleTap: () => {print("ok")},
                child: Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 242, 30, 10),
                  child: Center(
                    child: InkWell(
                      onTap: () => {print("Text click here")},
                      child: Text(
                        "Click me here",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String get() {
    print("hello");
    return ('wakeed');
  }
}
