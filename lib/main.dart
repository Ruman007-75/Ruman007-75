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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        // child: Icon(
        //   Icons.android,
        //   size: 50,
        //   color: Colors.white,
        //child: Image.network('https://www.google.com/url?sa=i&url=http%3A%2F%2Ft3.gstatic.com%2Flicensed-image%3Fq%3Dtbn%3AANd9GcSwmCPjmbBPJRYncnUkl1BroxMBk-Zzx2gWBiDd8dq2RgRtZ4_irCXfS51bNYF0TL9t&psig=AOvVaw1lWVYIAJQIC1k8aTDaiqLE&ust=1720247795609000&source=images&cd=vfe&opi=89978449&ved=0CAkQjRxqFwoTCIDrksekj4cDFQAAAAAdAAAAABAE'),
        // child: Image.asset('assets/image/shaky.jpg',
        //   // width: 400,
        //   // height: 200,
        // fit: BoxFit.cover),
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('on pressed');
        //   },
        // child: Text('Notification'),
        // ),
        // child: IconButton(onPressed: () {
        //   print('ADD');
        // },
        // icon: Icon(Icons.add),),

        // child: TextButton(onPressed: () {
        //   print('object');
        // },
        // child: Text('Ruman chy'),),

        // child: GestureDetector(
        //   onTap: (){
        //     print('Single Tab');
        //   },
        //   onDoubleTap: (){
        //     print('Double tab');
        //   },
        //   child: Text('Normal text'),

        // uporer gestureDetector niche Inkwell aktu defference

        child: InkWell(
        onTap: (){
        print('Single Tab');
        },
        onDoubleTap: (){
        print('Double tab');
        },
        child: Text('Normal text'),


    // j0di image na teke normal text take tahole
          // child: Image.asset('assets/image/shaky.jpg',
          //   width: 400,
          //   height: 200,
          // fit: BoxFit.cover),
        ),

        ),
      );

  }
}
