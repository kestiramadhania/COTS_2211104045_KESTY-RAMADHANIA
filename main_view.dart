import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Center(child: Text("Home Page")),
    Center(child: Text("Promo Page")),
    Center(child: Text("Pesanan Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: "Promo"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Pesanan"),
        ],
      ),
    );
  }
}