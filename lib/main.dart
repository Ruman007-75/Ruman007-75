import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greating App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hellow, World',
                style: TextStyle(color: Colors.redAccent,
                fontWeight: FontWeight.bold
                ),
              ),
              Text('Welcome to Flutter !'),
              Image.asset('assets/image/flutter.png'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Press Me',),
               // style: ButtonStyle(backgroundColor: Colors.green),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
