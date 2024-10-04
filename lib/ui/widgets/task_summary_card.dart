import 'package:flutter/material.dart';

class TaskSumarryCard extends StatelessWidget {
  const TaskSumarryCard({
    super.key, required this.title, required this.count,
  });
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: SizedBox(
        width: 110,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$count', style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 8,),

              Text(title, style: TextStyle(
                color: Colors.grey,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
