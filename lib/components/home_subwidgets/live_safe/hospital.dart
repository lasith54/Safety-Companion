import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  final Function? onMapFunction;
  const Hospital({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('hospitals near me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 201, 123, 163),
                          Color.fromARGB(255, 209, 64, 108),
                        ])),*/
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset(
                    'assets/hospital.png',
                    height: 32,
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Hospitals',
            style: TextStyle(
              color: Color.fromARGB(255, 214, 8, 70),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
