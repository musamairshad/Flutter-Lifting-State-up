import 'package:flutter/material.dart';

class BlueSquare extends StatelessWidget {
  const BlueSquare(
      {super.key,
      required this.size,
      required this.clicks,
      required this.updateClicks});
  final double size;
  final int clicks;
  final void Function() updateClicks;
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: updateClicks,
      child: Center(
        child: Container(
          height: size,
          width: size,
          color: Colors.blue,
          child: Center(
              child: Text(
            '$clicks',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
