import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
    MediaQueryData mediaQuery = MediaQuery.of(context);
    print(mediaQuery.size.width);
    print(mediaQuery.size.height);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.flipped.height);
    print(mediaQuery.size);
    if(mediaQuery.size.width<640){
      print('This is a phone');
    } else if(mediaQuery.size.width<640 && mediaQuery.size.width>1008){
      print('This is a tablet');
    } else {
      print('LAPTOP/DESKTOP');
    }

    return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
     /* body: OrientationBuilder(
        builder: (context, Orientation orientation) {
          print(orientation);
          if(orientation == Orientation.portrait){
            return Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    Text('fjfjfhfdjhdhghg'),
                    Text('fjfjfhfdjhdhghg'),
                    Text('fjfjfhfdjhdhghg'),
                    Text('fjfjfhfdjhdhghg'),
                    Text('fjfjfhfdjhdhghg'),
                  ],
                ),
                Text(orientation.name)
              ],
            );
          }else {
            return Center(
              child: Text('Too big Screen'),
            );
          }

        }
      ),*/
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          if(constraints.maxWidth<640){
            return Text('This is a phone');
          } else if(constraints.maxWidth<640 && constraints.maxWidth>1008){
            return Text('This is a tablet');
          } else {
            return Text('LAPTOP/DESKTOP');
          }

        },
      ),
    );
  }
}

