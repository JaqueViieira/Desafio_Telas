import 'package:desafio_telas/presenter/show_time/widgets/body_show_time.dart';
import 'package:flutter/material.dart';

class ShowTimePage extends StatelessWidget {
  const ShowTimePage(String configuracoes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        elevation: 0,
        title: Text(
          "Thermostat",
          style: TextStyle(color: Colors.grey[850]),
        ),
      ),
      body: const BodyShowTime(),
    );
  }
}
