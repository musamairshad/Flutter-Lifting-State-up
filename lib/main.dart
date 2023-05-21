import 'package:flutter/material.dart';
import 'package:example/blue_square.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int clicks = 0;

  void updateClicks() {
    // This is a call back function and it is declared in the constructor
    // of BlueSquare Widget.
    setState(() {
      clicks++;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlueSquare'),
      ),
      body: Column(
        children: [
          BlueSquare(size: 100, clicks: clicks, updateClicks: updateClicks),
          BlueSquare(size: 50, clicks: clicks, updateClicks: updateClicks),
          BlueSquare(size: 70, clicks: clicks, updateClicks: updateClicks),
        ],
      ),
    );
  }
}
