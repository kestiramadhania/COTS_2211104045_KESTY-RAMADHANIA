import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/onboarding_view.dart';
import 'modules/login/login_view.dart';
import 'modules/main/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'COTS App',
      initialRoute: '/onboarding',
      getPages: [
        GetPage(name: '/onboarding', page: () => OnboardingView()),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/main', page: () => MainView()),
      ],
    );
  }
}