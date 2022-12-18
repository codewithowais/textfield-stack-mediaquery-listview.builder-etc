import 'package:flutter/material.dart';
import 'package:newapp/views/dashboard_view.dart';
import '../utils/color_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Color(ColorConstants.primaryColor4),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardView()),
                );
              },
              child: Text("Dashboard")),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, i) {
                return Text(
                  "data $i",
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
