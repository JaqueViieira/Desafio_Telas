import 'package:desafio_telas/presenter/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      home: HomePage('home'),
      debugShowCheckedModeBanner: false,
    );
  }
}
