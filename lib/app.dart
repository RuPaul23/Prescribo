import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prescribo/features/authentication/screens/onboardingPage/onboarding.dart';
import 'package:prescribo/utils_new/theme/theme.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
        return GetMaterialApp(
          themeMode: ThemeMode.system,
          theme: CustomAppTheme.lightTheme,
          darkTheme: CustomAppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const OnBoardingPage(),
        );
      }
  }

