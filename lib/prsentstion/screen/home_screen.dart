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
      appBar: AppBar(
        title: const Text(
          'Firstwab\n #MP',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.white30,
      ),
      drawer: const NavMenu(),
      body: Column(
        children: [DeshBoardCard()],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return const Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
              child: Center(
            child: Text('FLUTTER WAB\n THE BASIC'),
          ))
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return const Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
              child: Center(
            child: Text('FLUTTER WAB\n THE BASIC'),
          ))
        ],
      ),
    );
  }

  }
