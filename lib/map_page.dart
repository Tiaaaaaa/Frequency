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

class Bubble extends StatefulWidget {
  
  const Bubble({super.key})
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
}

class BubbleState extends State<Bubble> {

  int _xCoord = 0;
  int _yCoord = 0;

  BubbleState(int x,int y){
    _xCoord = x;
    _yCoord = y;
  }

  @override
  Widget build(BuildContext context) {
    
    throw UnimplementedError();
  }

}

