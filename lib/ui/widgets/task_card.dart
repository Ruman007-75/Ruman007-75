import 'package:flutter/material.dart';
import 'package:task_manager/ui/utils/app_colors.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title of the Task',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              'Description of task',
            ),
            const Text(
              'Date: 12/12/2002',
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTaskStatusChip(),
                Wrap(
                  children: [
                    IconButton(
                        onPressed: _onTapEditButton, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: _onTapDeleteButton,
                        icon: Icon(Icons.delete)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapEditButton() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Edit Status'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                'New', 'Completed', 'Cancelled', 'Progress'
              ].map((e){
                return ListTile(
                  onTap: (){
                    
                  },
                  title: Text(e),
                );
              }).toList(),
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Cancel')),
              ElevatedButton(onPressed: () {}, child: Text('Okey')),
            ],
          );
        });
  }

  void _onTapDeleteButton() {}

  Widget _buildTaskStatusChip() {
    return Chip(
      label: Text(
        'New',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      side: const BorderSide(
        color: AppColors.themeColor,
      ),
    );
  }
}
