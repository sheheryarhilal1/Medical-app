import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFourthScreen extends StatelessWidget {
  const MyFourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(200.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.blue, // Set the background color here
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          leading: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white12,
          ),
          title: const Text("HI Sheheryar"),
          titleSpacing: 5,
          titleTextStyle: const TextStyle(color: Colors.white24),
        ),
      ),
    );
  }
}
