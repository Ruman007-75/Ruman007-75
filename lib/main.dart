import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'IntroApp',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

// child, children(multiful)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.white,
        ),
        body: Column(
          // vertically arrange kore
          children: [
            Text('hellow'),
            Text('Ruman'),
            Text('Jayed'),
            Text('Harun'),
            ElevatedButton(
                onPressed: () {},
                child: Text('Click here')),
            IconButton(onPressed: (){}, icon: Icon(Icons.access_time))
          ],
        ));
  }
}
