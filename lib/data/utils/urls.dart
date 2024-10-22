class Urls{
  static const String _baseurl= 'http://152.42.163.176:2006/api/v1';

  static const String registration= '$_baseurl/registration';
  static const String login= '$_baseurl/login';
  static const String addNewTask= '$_baseurl/createTask';
  static const String newTaskList= '$_baseurl/listTaskByStatus/New';
  static const String completedTaskList= '$_baseurl/listTaskByStatus/Completed';
  static const String cancelledTaskList= '$_baseurl/listTaskByStatus/Cancelled';
  static const String progressTaskList= '$_baseurl/listTaskByStatus/Progress';
}