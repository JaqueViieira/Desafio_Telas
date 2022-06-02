import 'package:desafio_telas/presenter/main/widgets/body_main.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage(String home, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Good Morning',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.bedtime_sharp,
          color: Colors.black,
          size: 35,
        ),
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: const BodyMain(),
    );
  }
}
