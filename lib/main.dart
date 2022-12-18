import 'package:flutter/material.dart';
import 'package:newapp/views/home_view.dart';
import 'package:newapp/views/login.dart';
import 'package:newapp/widgets/mediaqueryexample.dart';
import 'package:newapp/widgets/stack_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MediaQueryExample(),
    );
  }
}
