import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';
import 'package:frequency/variabiles.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENHEIGHT = MediaQuery.of(context).size.height*0.7;
    double SCREENWIDTH = MediaQuery.of(context).size.width;

    var positions = [
      Position(0.8, 0.8, SCREENWIDTH, SCREENHEIGHT),
      Position(0.41, 0.36, SCREENWIDTH, SCREENHEIGHT),
      Position(0.71, 0.61, SCREENWIDTH, SCREENHEIGHT),
      Position(0.21, 0.5, SCREENWIDTH, SCREENHEIGHT),
    ];

    Stack s = Stack(
      children: [
        Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
              child: Text("Transmit"),
              onTap: () => {},
            )),
        Bubble(
            Position(0.5, 0.5, SCREENWIDTH, SCREENHEIGHT),
            "IO",
            Image.asset(
              'assets/images/avicii.jpg',
              fit: BoxFit.cover,
            )),
      ],
    );

    for (var p in positions) {
      s.children.add(Bubble(
          p,
          "name",
          Image.asset(
            'assets/images/avicii.jpg',
            fit: BoxFit.cover,
          )));
    }

    return Scaffold(
        bottomSheet: const Footer(),
        body: FractionallySizedBox(
          heightFactor: 0.9,
          widthFactor: 1,
          child: Container(color: backgroundColor, child: s),
        ));
  }
}

class Bubble extends StatelessWidget {
  Position pos;
  double DIMENSION = 80;
  String _name = "";
  Image image;

  Bubble(this.pos, String name, this.image, {super.key}) {
    _name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          bottom: pos.getY() - DIMENSION / 2,
          left: pos.getX() - DIMENSION / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  clipBehavior: Clip.hardEdge,
                  height: DIMENSION,
                  width: DIMENSION,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border: Border.all(color: Colors.red, width: 5)),
                  child: image),
              Text(
                _name,
                style: TextStyle(color: secundaryColor, fontSize: 20),
              )
            ],
          ))
    ]);
  }
}

class Position {
  double x = 0;
  double y = 0;
  double screenWidth = 0;
  double screenHeight = 0;

  Position(double fractionalX, double fractionalY, this.screenWidth,
      this.screenHeight) {
    setX(fractionalX);
    setY(fractionalY);
  }

  double getX() {
    return x;
  }

  double getY() {
    return y;
  }

  void setX(double fractionalX) {
    if (fractionalX < 0 || fractionalX > 1) return;

    x = fractionalX * screenWidth;
  }

  void setY(double fractionalY) {
    if (fractionalY < 0 || fractionalY > 1) return;
    y = fractionalY * screenHeight;
  }
}
