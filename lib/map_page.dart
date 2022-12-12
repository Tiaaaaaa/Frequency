import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';
import 'package:frequency/variabiles.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double SCREENWIDTH = MediaQuery.of(context).size.width;

    var positions = [
      Position(100, 500),
      Position(200, 50),
      Position(150, 180),
      Position(400, 450),
      Position(380, 180),
    ];

    Stack s = Stack(
      children: [
        Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
              child: Text("$SCREENWIDTH  $SCREENHEIGHT"),
              onTap: () => {},
            )),
        Bubble(
            Position((SCREENWIDTH / 2) - 40, (SCREENHEIGHT / 2) - 40),
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
          bottom: pos.getY(),
          left: pos.getX(),
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

  Position(this.x, this.y);

  double getX() {
    return x;
  }

  double getY() {
    return y;
  }

  void setX(double x) {
    this.x = x;
  }

  void setY(double y) {
    this.y = y;
  }
}
