import 'package:blinkit_clone/repository/screens/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/categoryscreen.dart';
import 'package:blinkit_clone/repository/screens/homescreen.dart';
import 'package:blinkit_clone/repository/screens/printscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int currindex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currindex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home 1.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category 1.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer 1.png"),
            label: "",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currindex,
        onTap: (index) {
          setState(() {
            currindex = index;
          });
        },
      ),
    );
  }
}
