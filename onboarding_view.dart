import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  final List<String> slides = [
    "Welcome to our app!",
    "Discover amazing features.",
    "Join us now!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: slides.length,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              slides[index],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/login');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}