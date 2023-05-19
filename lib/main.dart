import 'package:flutter/material.dart';
import 'package:example/blue_square.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Center(child: BlueSquare(size: 50.0))),
  ));
}
