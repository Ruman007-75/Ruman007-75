
import 'package:flutter/material.dart';
import 'package:osad_batch_seven/water_track.dart'; // Ensure this file exists and is properly defined.

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _glassNoTEcontroller =
  TextEditingController(text: '1');
  List<WaterTrack> waterTrackList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Tracker'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildWaterTrackCount(),
          const SizedBox(height: 24),
          Expanded(
            child: _buildWaterTrackListView(),
          ),
        ],
      ),
    );
  }

  Widget _buildWaterTrackListView() {
    return ListView.separated(
      itemCount: waterTrackList.length,
      itemBuilder: (context, index) {
        return _buildWaterTrackListTile(index);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }

  ListTile _buildWaterTrackListTile(int index) {
    WaterTrack waterTrack = waterTrackList[index];
    return ListTile(
      title: Text('${waterTrack.dateTime.hour}:${waterTrack.dateTime.minute}'),
      subtitle: Text('${waterTrack.dateTime.day}/${waterTrack.dateTime.month}/${waterTrack.dateTime.year}'),
      leading: CircleAvatar(child: Text('${waterTrack.noOfGlasses}')),
      trailing: IconButton(
        onPressed: () => _onTapDeleteButton(index),
        icon: const Icon(Icons.delete),
      ),
    );
  }

  Widget _buildWaterTrackCount() {
    return Column(
      children: [
        Text(
          getTotalGlassCount().toString(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Text(
          'Glass/es',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: TextField(
                controller: _glassNoTEcontroller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: _onTapaddNewWaterTrack,
              child: const Text('Add'),
            ),
          ],
        ),
      ],
    );
  }

  int getTotalGlassCount() {
    int counter = 0;
    for (WaterTrack t in waterTrackList) {
      counter += t.noOfGlasses;
    }
    return counter;
  }

  void _onTapaddNewWaterTrack() {
    if (_glassNoTEcontroller.text.isEmpty) {
      _glassNoTEcontroller.text = '1';
    }
    final int noOfGlasses = int.tryParse(_glassNoTEcontroller.text) ?? 1;
    WaterTrack waterTrack = WaterTrack(
      noOfGlasses: noOfGlasses,
      dateTime: DateTime.now(),
    );
    setState(() {
      waterTrackList.add(waterTrack);
    });
  }

  void _onTapDeleteButton(int index) {
    setState(() {
      waterTrackList.removeAt(index);
    });
  }
  void dispose(){
    _glassNoTEcontroller.dispose();
    super.dispose();
  }
}

