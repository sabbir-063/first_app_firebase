import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_app_firebase/utils/theme/one_app_theme.dart';
import 'package:first_app_firebase/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: OneAppTheme.lightTheme,
      darkTheme: OneAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      // home: const Scaffold(),
    );
  }
}
