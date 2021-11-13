import 'package:flutter/material.dart';
//import 'package:luxury_car/data/data.dart';
import 'package:luxury_car/screen/cars.dart';
import 'package:luxury_car/screen/title.dart';
//import 'package:luxury_car/widget/mycar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 150,
            ),
            TextButton(
                onPressed: () {},
                child: const Text('Setting',
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {},
                child: const Text('A Propos',
                    style: TextStyle(fontSize: 25, color: Colors.black)))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            Expanded(child: TitleCar()),
            Expanded(flex: 12, child: Cars()),
          ],
        ),
      ),
    );
  }
}
