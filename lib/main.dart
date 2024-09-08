import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp(), // Wrap your app
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child:  Text('Counter $counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: (){
              counter--;
              setState(() {

              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: (){
              counter++;
              setState(() {

              });
            },
            child:const Icon(Icons.add),
          ),

        ],
      ),

    );
  }

}
/*
class Home extends StatelessWidget {
   Home({super.key});
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
*/
