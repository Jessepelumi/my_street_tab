import 'package:flutter/material.dart';
import 'package:my_street_tab/src/modules/views/users/location/widgets/location_header.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          LocationHeader(),
          Expanded(
            child: SizedBox(
              child: Center(
                child: Text("Map Here"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
