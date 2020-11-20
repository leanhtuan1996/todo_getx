import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/controllers/counter_controller.dart';
import 'package:todo_getx/modules/app_module.dart';

class TodoApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppModule>(
        init: AppModule(),
        builder: (controller) {
          final CounterController counterController =
              Get.find<CounterController>();
          return GetMaterialApp(
            title: 'Flutter Todo App Getx',
            initialBinding: controller,
            getPages: AppModule.routes,
            navigatorObservers: [
              controller.routeObserver,
            ],
            home: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                title: Text(
                  "My Plan",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textScaleFactor: 1.3,
                ),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    // Text(
                    //   '${counterController.count}',
                    //   style: Theme.of(context).textTheme.headline4,
                    // )
                    GetX(
                        init: counterController,
                        builder: (counterController) {
                          return Text(
                            '${counterController.count}',
                            style: Theme.of(context).textTheme.headline4,
                          );
                        }),
                    // Obx(() => Text(
                    //       '${counterController.count}',
                    //       style: Theme.of(context).textTheme.headline4,
                    //     ))
                    RaisedButton(
                        onPressed: () {
                          controller.changeTheme();
                        },
                        child: Text('Update UI'))
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  counterController.increment();
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ),
          );
        });
  }
}
