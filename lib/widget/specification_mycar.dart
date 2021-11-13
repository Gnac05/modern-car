// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxury_car/model/class.dart';

class SpecificationOfMyCar extends StatelessWidget {
  const SpecificationOfMyCar({Key? key, required this.on_car})
      : super(key: key);
  final Car on_car;

  Widget customContainer(String text1, String text2, bool a) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white10,
        elevation: a ? 10 : 0,
        child: Container(
          decoration: BoxDecoration(
              color: a ? on_car.color : Colors.white38,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: 25, color: a ? Colors.white : Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 12.5, color: a ? Colors.white : Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        actions: [
          Text(
            on_car.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 40, color: Colors.black),
          ),
        ],
      ),
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: on_car.hydrid
                    ? const Text(
                        'The New hydrid Super Car',
                      )
                    : on_car.gasoil
                        ? const Text(
                            'The essence of charm',
                          )
                        : const Text(
                            'Beautiful Car',
                          )),
            Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Image.asset(
                          on_car.car,
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  '${on_car.vitesse}',
                                  style: const TextStyle(fontSize: 40),
                                ),
                                const Text('km/h')
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  '${on_car.time}s',
                                  style: const TextStyle(fontSize: 36),
                                ),
                                const Text('0-100km/h')
                              ],
                            ))
                          ],
                        )),
                  ],
                )),
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(flex: 1, child: Text('Motor')),
                        Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: customContainer(
                                        'VTEC', 'Gasoil', on_car.gasoil)),
                                Expanded(
                                    flex: 1,
                                    child: customContainer(
                                        'VTEC', 'Diesel', on_car.diesel)),
                                Expanded(
                                    flex: 1,
                                    child: customContainer(
                                        'VTEC', 'Hydrid', on_car.hydrid))
                              ],
                            )),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(flex: 1, child: Text('Design')),
                        Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: customContainer('PREMIUM',
                                        'Design Pack', !on_car.sport)),
                                Expanded(
                                    flex: 1,
                                    child: customContainer(
                                        'SPORT', 'Design Pack', on_car.sport)),
                              ],
                            )),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 65,
                          width: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: on_car.color),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Order now',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white, size: 15)
                            ],
                          ),
                        ),
                      ],
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
