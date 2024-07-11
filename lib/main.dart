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
     /*   body: Column(
          // vertically arrange kore
          mainAxisSize: MainAxisSize.max,
          //all site lekha soman, space tik, line space tik
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // start, end kora line ke,
          crossAxisAlignment: CrossAxisAlignment.start,
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
        )); */
   /* body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // horizontal align
        Text('hellow world\nhelloworld'),
        Text('hellow world'),
        Text('hellow world'),
        Text('hellow world'),
        Text('hellow world'),
      ],

    ),
    ),
*/
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Text('Colomn 1')
              ],
        
            ),
            Column(
              children: [
                Text('Colomn 2')
              ],
        
            ),
            Column(
              children: [
                Text('Colomn 3')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
