import 'package:get/get.dart';
import 'package:todo_getx/bindings/auth_binding.dart';
import 'package:todo_getx/screens/auth/sign_in_screen.dart';
import 'package:todo_getx/screens/auth/sign_up_screen.dart';

class AuthModule extends GetxService {
  static void bindings() {
    // init dependancies
    AuthBindings();
  }

  static final routes = [
    _signIn,
    _signUp,
  ];

  static final _signIn = GetPage(name: '/sign_in', page: () => SignInScreen());
  static final _signUp = GetPage(name: '/sign_up', page: () => SignUpScreen());
}
