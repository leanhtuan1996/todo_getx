import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_getx/modules/auth/auth_module.dart';
import 'package:todo_getx/modules/counter_module.dart';

class AppModule extends GetxController implements Bindings {
  // listen route
  final routeObserver = RouteObserver<PageRoute>();
  final pref = Get.find<SharedPreferences>();

  AppModule() {
    dependencies();
    isDarkMode
        ? Get.changeTheme(ThemeData.dark())
        : Get.changeTheme(ThemeData.light());
  }

  @override
  void dependencies() {
    // init dependencies for this app
    bindingWithUnAuth();
  }

  void bindingWithUnAuth() {
    CounterModule.bindings();
    AuthModule.bindings();
  }

  static final routes = [
    ...AuthModule.routes,
  ];

  bool get isDarkMode => pref.getBool(DARK_MODE_KEY) ?? false;
  String get getLanguage => pref.getString(LANGUAGE_KEY) ?? 'en';

  void changeTheme() async {
    await pref.setBool(DARK_MODE_KEY, !isDarkMode);
    Get.changeTheme(!isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
}

const DARK_MODE_KEY = 'isDarkMode';
const LANGUAGE_KEY = 'Language';
