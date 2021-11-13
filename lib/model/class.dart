import 'package:flutter/material.dart';

class Car {
  final String name;
  final Color color;
  final String car;
  final int vitesse;
  final double time;
  final bool gasoil;
  final bool hydrid;
  final bool diesel;
  final bool sport;

  Car(
      {required this.name,
      required this.color,
      required this.car,
      required this.vitesse,
      required this.time,
      required this.gasoil,
      required this.hydrid,
      required this.diesel,
      required this.sport});
}
