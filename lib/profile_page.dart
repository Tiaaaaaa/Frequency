import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';
import 'package:frequency/variabiles.dart';

class ProfilePage extends StatelessWidget {
  Table table = Table(
    border: TableBorder.all(width: 3, color: Colors.black),
    columnWidths: const <int, TableColumnWidth>{
      0: FlexColumnWidth(),
      1: FlexColumnWidth(),
      2: FlexColumnWidth(),
    },
    children: [
      TableRow(children: [
        Container(
          height: 32,
          color: Colors.green,
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Container(
            height: 32,
            width: 32,
            color: Colors.red,
          ),
        ),
        Container(
          height: 64,
          color: Colors.blue,
        ),
      ])
    ],
  );

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SCREENHEIGHT = MediaQuery.of(context).size.height * 0.7;
    final SCREENWIDTH = MediaQuery.of(context).size.width;

    Widget up = Column(
      children: [
        Image.asset(
          'assets/images/avicii.jpg',
          scale: 1,
        ),
        Text(
          "Username",
          style: TextStyle(color: primaryColor, fontSize: 30),
        )
      ],
    );

    return Scaffold(
        bottomNavigationBar: const Footer(),
        body: Center(
            child: Container(
          width: SCREENWIDTH - (SCREENWIDTH / 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [up, table],
          ),
        )));
  }

  void addToTable(Image im) {
    table.children.add(TableRow(children: [im, im, im]));
  }
}

class Song extends StatefulWidget {
  const Song({super.key});

  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Text(
              "The Days - The Days/Nights",
              style: TextStyle(
                  color: Color.fromARGB(255, 131, 209, 59), fontSize: 30),
            ),
            Image.asset(
              'assets/images/avicii.jpg',
              scale: 30,
            ),
            IconButton(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              icon: (_isFavorited
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
            ),
          ],
        ));
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
