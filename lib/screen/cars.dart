import 'package:flutter/material.dart';
import 'package:luxury_car/data/data.dart';
import 'package:luxury_car/widget/mycar.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return MyCar(a_car: carslist[index]);
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 25),
        itemCount: carslist.length);
  }
}
