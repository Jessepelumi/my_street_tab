// application structure

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/modules/router/navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Navigation(),
    );
  }
}
