import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Enter your email"),
                controller: emailController,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter your password"),
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Sign up now"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
