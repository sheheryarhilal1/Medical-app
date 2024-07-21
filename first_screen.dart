import 'package:flutter/material.dart';
import 'package:my_app/second_screen.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("My Medical App"),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightBlueAccent,
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 100.0,
                  color: Colors.white,
                ),
              ),
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20), // Space between circle and text
            const Text(
              'BrainEscape Medical',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MySecondScreen()),
              );
            },
            child: const Text("Next"),
          ),
        ),
      ),
    );
  }
}
