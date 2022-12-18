import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.50,
            ),
            Container(
              color: Colors.yellow,
              height: MediaQuery.of(context).size.height * 0.50,
            )
          ],
        ),
      ),
    );
  }
}
