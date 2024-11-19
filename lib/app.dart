// application structure

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/auth/views/onboarding/onboarding.dart';
//import 'package:my_street_tab/src/modules/router/vendor/navigation.dart';
//import 'package:my_street_tab/src/modules/router/user/navigation.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/themes/elevated_button.dart';
import 'package:my_street_tab/src/utils/themes/text_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primary,
        scaffoldBackgroundColor: scaffoldWhite,
        elevatedButtonTheme: AppElevatedButtonTheme.appElevatedButtonTheme,
        textTheme: AppTextTheme.textTheme,
      ),
      home: const Onboarding(),
    );
  }
}
