import 'package:flutter/material.dart';

class DeshBoardCard extends StatelessWidget {
  const DeshBoardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.timelapse, color: Colors.white30,),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSingleSection(
                    'sales',
                    '426242626'
                ),
                _buildSingleSection(
                    'Volume',
                    '426242626'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleSection(String title, String number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 16,
            fontWeight: FontWeight.w600),),
            Text(number)
          ],
        );
  }
}