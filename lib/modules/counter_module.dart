import 'package:get/get.dart';
import 'package:todo_getx/controllers/counter_controller.dart';

class CounterModule extends GetxService {
  static void bindings() {
    Get.lazyPut(() => CounterController());
  }
}
