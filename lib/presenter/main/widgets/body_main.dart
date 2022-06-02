import 'package:flutter/material.dart';

import '../../shared/widgets/custom_card.dart';

class BodyMain extends StatelessWidget {
  const BodyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    "assets/good morning 2.jpeg",
                    cacheHeight: 240,
                    cacheWidth: 390,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 55,
                  bottom: 10,
                ),
                child: Text(
                  "CAM LR02",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: const Text(
                "Devices",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.all(8),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.2,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                CustomCard(
                  title: "quarto 1",
                  icon: Icon(
                    Icons.light_mode_sharp,
                    color: Colors.amber[700],
                    size: 35,
                  ),
                  cardColor: Colors.amber.shade50,
                ),
                CustomCard(
                  title: "quarto 2 ",
                  icon: Icon(
                    Icons.lightbulb,
                    color: Colors.amber[600],
                    size: 35,
                  ),
                  cardColor: Colors.amber.shade50,
                ),
                CustomCard(
                  title: "quarto 3",
                  icon: const Icon(
                    Icons.live_tv,
                    size: 35,
                  ),
                  cardColor: Colors.amber.shade50,
                ),
                CustomCard(
                  title: "quarto 4",
                  icon: const Icon(
                    Icons.light_mode,
                    size: 35,
                  ),
                  cardColor: Colors.amber.shade50,
                ),
              ],
            ),
          ],
        ),
       
      ],
    );
  }
}
