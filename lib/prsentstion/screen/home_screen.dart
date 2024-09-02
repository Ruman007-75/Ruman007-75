import 'package:flutter/material.dart';
import 'package:osad_batch_seven/prsentstion/widget/deshboard_card.dart';
import 'package:osad_batch_seven/prsentstion/widget/nav_menu.dart';
import 'package:osad_batch_seven/prsentstion/widget/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      drawer: const NavMenu(),
      body: Column(
        children: [DeshBoardCard(),
        Column(
          children: [Text('FLUTTER WAB\n THE BASIC', style: TextStyle(color: Colors.black, fontSize: 30),),
          SizedBox(height: 7,),
            Text('In publishing and graphic design, Lorem ipsum \n'
                ' ipsum is a placeholder text commonly used doc \n'
                'to demonstrate the visual form of a document or\n'
                ' without relying on meaningful content.', style: TextStyle(color: Colors.black, fontSize: 16),),
            SizedBox(height: 20,),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){}, child: Text('TextButton', style: TextStyle(color: Colors.white),),
            )
          ],
        )
        ],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return  Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
              child: Center(
            child: Text('FLUTTER WAB\n THE BASIC'),
          )),
          Column(
            children: [Text('FLUTTER WAB\n THE BASIC', style: TextStyle(color: Colors.black, fontSize: 30),),
              SizedBox(height: 7,),
              Text('In publishing and graphic design, Lorem ipsum \n'
                  ' ipsum is a placeholder text commonly used doc \n'
                  'to demonstrate the visual form of a document or\n'
                  ' without relying on meaningful content.', style: TextStyle(color: Colors.black, fontSize: 16),),
              SizedBox(height: 20,),
              ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){}, child: Text('TextButton', style: TextStyle(color: Colors.white),),
              )
            ],
          ),

        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
              child: Center(
            child: Text('FLUTTER WAB\n THE BASIC'),
          )),
          Center(
            child: Column(
              children: [Text('FLUTTER WAB\n THE BASIC', style: TextStyle(color: Colors.black, fontSize: 30),),
                    SizedBox(height: 7,),
                    Text('In publishing and graphic design, Lorem ipsum \n'
              ' ipsum is a placeholder text commonly used doc \n'
              'to demonstrate the visual form of a document or\n'
              ' without relying on meaningful content.', style: TextStyle(color: Colors.black, fontSize: 16),),
                    ],
            ),
          ),
            SizedBox(height: 20,),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: (){}, child: Text('TextButton', style: TextStyle(color: Colors.white),),
            )
          ]

      ),

    );
  }

  }

