import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_neew_task_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/task_card.dart';
import 'package:task_manager/ui/widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();

  NewTaskScreen.name();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskCard();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddFAB,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSumarryCard(
              count: 9,
              title: 'New',
            ),
            TaskSumarryCard(
              count: 9,
              title: 'Completed',
            ),
            TaskSumarryCard(
              count: 9,
              title: 'Cancelled',
            ),
            TaskSumarryCard(
              count: 9,
              title: 'Progress',
            ),
          ],
        ),
      ),
    );
  }

  void _onTapAddFAB() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddNeewTaskScreen(),
      ),
    );
  }
}

