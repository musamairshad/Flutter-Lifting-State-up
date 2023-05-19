import 'package:flutter/material.dart';

class BlueSquare extends StatefulWidget {
  const BlueSquare({super.key, required this.size});
  final double size;
  @override
  State<BlueSquare> createState() {
    return _BlueSquareState();
  }
}

class _BlueSquareState extends State<BlueSquare> {
  int clicks = 0;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicks++;
        });
      },
      child: Container(
        height: widget.size,
        width: widget.size,
        color: Colors.blue,
        child: Text('$clicks',
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
