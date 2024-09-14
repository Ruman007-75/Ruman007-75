
import 'dart:io';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}


class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  // void main() {
  //   double x = 51;
  //  // int counter = 0;
  //
  //   var z = x * counter;
  //   //print(z.toStringAsFixed(1));
  //   // 3780.0
  // }
  double result = 51;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bag'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/pullover.jpg'),
            SizedBox(width: 12,),
            Column(
             children: [
               Row(
                 children: [
                   Text('Pullover'),
                   SizedBox(width: 20,),
                   IconButton.outlined(onPressed: (){}, icon: Icon(Icons.more_vert),),
                   //IconButton(onPressed: (){}, icon: Icon(Platform.isAndroid ? Icons.more_vert : Icons.more_vert),),
            ]
               ),

               SizedBox(height: 8,),
               Text('Color: Black, Size: L'),
               SizedBox(height: 8,),

               Row(
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
                     Text('$counter'),
                     const SizedBox(width: 16,),
                     FloatingActionButton(
                       onPressed: (){
                         counter++;
                         setState(() {

                         });
                       },
                       child:const Icon(Icons.add),
                     ),
                     SizedBox(width: 20,),
                     //TextButton(onPressed: main, child: Text('$Z')),
                     Text('${counter*result}tk'),
             ]
            ),
          ],
        ),
    ],
    ),

      ),
    );
  }


}
