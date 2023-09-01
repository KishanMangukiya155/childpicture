import 'package:childpicture/page1.dart';
import 'package:childpicture/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int home = 0;
  List screen = [
    Page1(),
    Page2(),
    Center(child: Text('Detail Personal')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[home],
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          selectedIconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          fixedColor: Colors.black,
          elevation: 50,
          currentIndex: home,
          onTap: (value) {
            setState(() {
              home = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_all_rounded), label: 'Borrow'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'personal'),
          ]),
    );
  }
}
