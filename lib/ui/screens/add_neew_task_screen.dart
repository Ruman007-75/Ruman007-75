import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class AddNeewTaskScreen extends StatefulWidget {
  const AddNeewTaskScreen({super.key});

  @override
  State<AddNeewTaskScreen> createState() => _AddNeewTaskScreenState();
}

class _AddNeewTaskScreenState extends State<AddNeewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TMAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 42,
              ),
              Text('Add New Task', style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              )),
              const SizedBox(height: 24,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title'
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                    hintText: 'Description'
                ),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined))
        
            ],
          ),
        ),
      ),
    );
  }
}
