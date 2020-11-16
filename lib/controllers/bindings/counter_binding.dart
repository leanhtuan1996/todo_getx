import 'package:get/get.dart';
import 'package:todo_getx/controllers/counter_controller.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
