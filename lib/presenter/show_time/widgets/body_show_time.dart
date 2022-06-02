import 'package:desafio_telas/presenter/shared/widgets/temperature_card.dart';
import 'package:flutter/material.dart';

class BodyShowTime extends StatelessWidget {
  const BodyShowTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(100),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 243, 225, 160),
                  blurRadius: 30,
                ),
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "80°",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 72,
                  ),
                ),
                Text(
                  "Room Temperature",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TemperatureCard(
              padding: 25,
              title: "Heating",
              icon: Icon(
                Icons.ac_unit_outlined,
                color: Colors.lightBlue,
              ),
              cardColor: Colors.white,
              bodyText: "69°",
              fontSize: 30,
            ),
            TemperatureCard(
              padding: 25,
              title: "cooling",
              icon: Icon(
                Icons.air_sharp,
                color: Colors.deepOrange,
              ),
              cardColor: Colors.white,
              bodyText: "75°",
              fontSize: 30,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: TextButton(
                onPressed: () {
                  print("DEU CERTO:)");
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(350, 50),
                  ),
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.resolveWith(
                    (states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      );
                    },
                  ),
                ),
                child: const Text(
                  "Turn Off",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
