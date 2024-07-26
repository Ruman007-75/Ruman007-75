//import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:osad_batch_seven/home.dart';

// Textfield, thememode,dark and light mode
//reformate kibabe korcen jante hobe?
// 34.39s
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
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.amber,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.deepPurple,
                  width: 2
              )
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.green,
                  width: 2
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.yellow,
              )
          ),
          labelStyle: TextStyle(
            fontSize: 16,
          ),
          hintStyle: TextStyle(
            color: Colors.purple.shade200,
          ),

        ),
          textTheme: TextTheme(
              bodySmall: TextStyle(
                fontSize: 20,
              )
          )

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.yellow,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            )),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ))),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.green, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.yellow,
              )),
          labelStyle: TextStyle(
            fontSize: 16,
          ),
          hintStyle: TextStyle(
            color: Colors.purple.shade200,
          ),
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 25,
          ),
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w200,
          ),
          titleMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          )
        )
      ),
      //themeMode: ThemeMode.system,
      themeMode: ThemeMode.dark,

    );
  }
}




