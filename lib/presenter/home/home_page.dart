//import 'package:desafio_telas/presenter/home/widgets/body_home.dart';

import 'package:desafio_telas/presenter/main/main_page.dart';
import 'package:desafio_telas/presenter/show_time/show_time_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage(String home, {Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> screen = [
    const MainPage(""),
    const ShowTimePage("configuracoes"),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: "configurações",
          ),
        ],
      ),
    );
  }
}
