import'package:flutter/material.dart';
class TitleCar extends StatelessWidget {
  const TitleCar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Pick Your model',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
    );
  }
}