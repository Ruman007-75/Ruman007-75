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
      // body: ListView(
      //   children: [ //SingleChildScrollView eta use kara jay==// row teke coloum a niya
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     )
      //   ],
      //   body: ListView.builder(
      //     itemCount: 1000, //0-999
      //   itemBuilder: (context, index){
      //       return SizedBox(
      //       width: 100,
      //       height: 100,
      // child: Center(child: Text(index.toString())),
      //       );
      // },
      //   ),
        body: ListView.separated(
          itemCount: friendlist.length,

          //scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
           return ListTile(
             tileColor: Colors.green.shade50,
             title: Text(friendlist[index]),
             subtitle: Text('School friends'),
             trailing: Column(
               children: [
                 Icon(Icons.add),
                 Text('Active')
               ],
             ),
             onTap: (){
               print('$index item tapped');
             },
             titleTextStyle: TextStyle(
               fontStyle: 18,
               color: Colors.grey,
             )
           );
          },
          separatorBuilder: (context, index) {
            return Divider(
              //height: 10,
              color: Colors.green,
              thickness: 5,
              endIndent: 16,
              indent: 4,
            );
            return Text('this is $index separator');
          },
         ),
      //  body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       crossAxisSpacing: 4,
      //       mainAxisSpacing: 10,
      //     childAspectRatio: 1,
      //   ),
      //   itemCount: friendlist.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         Text(index.toString()),
      //         Text(friendlist[index]),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
