import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: const Footer(),
        body: FractionallySizedBox(
          heightFactor: 0.9,
          widthFactor: 1,
          child: Container(
            child: Stack(children: [
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: InkWell(
                    child: Text("Transmit"),
                    onTap: () => {print("trasmettendo")},
                  )),
            ]),
          ),
        ));
  }
}
