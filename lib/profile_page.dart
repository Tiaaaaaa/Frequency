import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget up = Column(
      children: const [
        Icon(
          Icons.music_note,
          color: Color.fromARGB(255, 131, 209, 59),
          size: 100,
        ),
        Text(
          "Username",
          style: TextStyle(
              color: Color.fromARGB(255, 131, 209, 59),
              backgroundColor: Colors.red,
              fontSize: 50),
        )
      ],
    );

    // Only for display
    Widget song = Row(
      children: [
        const Text(
          "Title - Album",
          style: TextStyle(
              color: Color.fromARGB(255, 131, 209, 59),
              backgroundColor: Color.fromARGB(255, 185, 113, 64),
              fontSize: 30),
        ),
        Image.asset(
          'assets/images/avicii.jpg',
          scale: 30,
        ),
      ],
    );

    return Scaffold(
        bottomNavigationBar: Footer(),
        body: Center(
          child: Column(
            children: [
              up,
              SizedBox(
                  height: 100,
                  width: 250,
                  child: ListView(
                    children: [song, song, song],
                  ))
            ],
          ),
        ));
  }
}
