import 'package:flutter/material.dart';
import 'package:newapp/utils/color_constants.dart';
import 'package:newapp/views/home_view.dart';
import '../utils/text_constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var errorText = '';

  login() {
    if (email.text == 'admin@gmail.com' && password.text == '123') {
      print("Login Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    } else {
      errorText = 'Login failed';
      print("Login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: email,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              login();
            },
            child: Text(TextConstants.loginText),
          ),
          Text(
            errorText,
            style: TextStyle(fontSize: 35, color: ColorConstants.errorCollor),
          )
        ],
      ),
    );
  }
}
