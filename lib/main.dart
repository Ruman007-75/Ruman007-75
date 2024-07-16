import 'package:flutter/material.dart';

// listView, DridView, sizeBox,listTile
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> friendlist = ['Ruman', 'Sunny', 'Sujon', 'Jayed', 'hasan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              //color: Colors.green,
              //padding: EdgeInsets.all(16),
              // padding: EdgeInsets.symmetric( //2 dike padding chile
              //   vertical: 8,
              //   horizontal: 4,
              // ),
              padding: EdgeInsets.only(
                bottom: 6, //jee kuno 1k dike dile
              ),
              margin: EdgeInsets.all(8),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black45, width: 4),
                //borderRadius: BorderRadius.circular(16),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(16),
                //   bottomRight: Radius.circular(8),
                // ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image/shaky.jpg'),
                  fit: BoxFit.cover,
                  opacity: .4
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3),// change position of the shedow

                  )
                ]
              ),
              child: Text('Ruman'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('shaku'),
            ),
            ElevatedButton(onPressed: (){
             // showAboutDialog(context: context, applicationName: 'Sample',
             //     applicationVersion: '1.0.1',
             // children: [
             //   Text('Sample text'),
             // ])
              // ;
              showDialog(context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.black38,
                  //58 minute done
                  builder: (ctx) {
                return AlertDialog(
                  title: Text('Its out customom dialog'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ruman chowdhur'),
                      Text('Ruman chowdhur'),
                      Text('Ruman chowdhur'),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Cancel'),
                    ),
                    TextButton(onPressed: (){}, child: Text('Okey'),
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                   // borderRadius: BorderRadius.circular(8)
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: Colors.white,
                );
              });
            }, child: Text('Dialog'),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: (){ //bottom shade button
              showModalBottomSheet(
                backgroundColor: Colors.white24,
                barrierColor: Colors.black54,
                isDismissible: false,
                enableDrag: false,
                context: context, builder: (ctx){
                return SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('title'),
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text('jklkj'),
                        ],
                      ),
                    ],
                  ),
                );
              },
              );
            },
                child: Text('show bottom shade'),
            ), //ekhane ses bottom shade button
          ],
        ),
      ),
    );
  }
}
