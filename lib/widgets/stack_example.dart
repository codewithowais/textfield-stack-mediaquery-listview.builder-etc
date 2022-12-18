import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
