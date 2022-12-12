import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget up = Column(
      children: [
        Image.asset(
          'assets/images/avicii.jpg',
          scale: 1,
        ),
        const Text(
          "Username",
          style:
              TextStyle(color: Color.fromARGB(255, 131, 209, 59), fontSize: 50),
        )
      ],
    );

    return Scaffold(
      bottomNavigationBar: const Footer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          up,
          SizedBox(
              height: 250,
              child: ListView(
                children: const [
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song(),
                  Song()
                ],
              ))
        ],
      ),
    );
  }
}

class Song extends StatefulWidget {
  const Song({super.key});

  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
  bool _isFavorited = false;
  int _favoriteCount = 41;

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
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
