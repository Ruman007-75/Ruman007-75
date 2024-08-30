import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQuery = MediaQuery.of(context);
     print(MediaQuery.sizeOf(context).width);
    // print(mediaQuery.size.height);
    // print(mediaQuery.size.aspectRatio);
    // print(mediaQuery.size.flipped.height);
    // print(mediaQuery.size);
    // if(mediaQuery.size.width<640){
    //   print('This is a phone');
    // } else if(mediaQuery.size.width<640 && mediaQuery.size.width>1008){
    //   print('This is a tablet');
    // } else {
    //   print('LAPTOP/DESKTOP');
    // }

    return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),

      body: LayoutBuilder(builder: (context, constrains){
        return Text(constrains.maxWidth.toString());
      }),
      // vitore ba bahire same kaj korbe layoutBuilder
    );
  }
}

