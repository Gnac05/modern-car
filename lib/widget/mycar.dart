// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:luxury_car/model/class.dart';
import 'package:luxury_car/widget/specification_mycar.dart';

class MyCar extends StatelessWidget {
  const MyCar({Key? key, required this.a_car}) : super(key: key);
  final Car a_car;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SpecificationOfMyCar(
                      on_car: a_car,
                    )));
      },
      child: SizedBox(
        height: 210,
        width: 325,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 25,
              child: Container(
                decoration: BoxDecoration(
                    color: a_car.color,
                    borderRadius: BorderRadius.circular(28)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            a_car.name,
                            style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          a_car.hydrid
                              ? const Text('The New hydrid Super Car',
                                  style: TextStyle(color: Colors.white))
                              : a_car.gasoil
                                  ? const Text('The essence of charm',
                                      style: TextStyle(color: Colors.white))
                                  : const Text(
                                      'Beautiful Car',
                                      style: TextStyle(color: Colors.white),
                                    )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              bottom: 10,
              left: 10,
              child: Icon(
                Icons.add_circle_sharp,
                size: 50,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: -70.0,
              right: -5,
              child: Image.asset(
                a_car.car,
                width: 250,
                height: 250,
              ),
            )
          ],
        ),
      ),
    );
  }
}
