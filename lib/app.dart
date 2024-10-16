// application structure

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/router/navigation.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';

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
      ),
      home: const Navigation(),
    );
  }
}
