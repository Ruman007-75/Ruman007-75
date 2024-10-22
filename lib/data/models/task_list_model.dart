import 'package:task_manager/data/models/task_model.dart';

class TaskListModel {
  String? status;
  List<TaskModel>? task_list;

  TaskListModel({this.status, this.task_list});

  TaskListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      task_list = <TaskModel>[];
      json['data'].forEach((v) {
        task_list!.add(TaskModel.fromJson(v));
      });
    }
  }
  }


