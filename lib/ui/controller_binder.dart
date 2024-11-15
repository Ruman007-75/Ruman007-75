import 'package:get/get.dart';
import 'package:task_manager/ui/controller/new_task_list_controller.dart';
import 'package:task_manager/ui/controller/sign_in_controller.dart';

class ControllerBinder extends Bindings{

  @override
  void dependencies() {
    Get.put(SignInController());
    Get.put(NewTaskListController());
  }

}