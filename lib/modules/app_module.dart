import 'package:get/get.dart';
import 'package:todo_getx/modules/counter_module.dart';

class AppModule extends GetxController implements Bindings {
  AppModule() {
    dependencies();
  }

  @override
  void dependencies() {
    // init dependencies of app
    CounterModule.bindings();
  }
}
