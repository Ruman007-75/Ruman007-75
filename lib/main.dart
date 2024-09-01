import 'package:flutter/material.dart';
import 'package:osad_batch_seven/prsentstion/screen/home_screen.dart';

void main(){
  runApp(const RSAApp());
}
class RSAApp extends StatelessWidget {
  const RSAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
