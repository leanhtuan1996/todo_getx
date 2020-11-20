import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_getx/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(await SharedPreferences.getInstance());

  runZonedGuarded(() {
    runApp(TodoApplication());
  }, (error, stackTrade) {
    print(error);
  });
}
