import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

// "https://i.pinimg.com/originals/fe/09/44/fe094463f75b775e3e28f6f8c47281e3.jpg"

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
        Column(
          children: const [Text("Title"), Text("Album")],
        ),
        const Icon(
          Icons.music_note,
          color: Color.fromRGBO(109, 234, 163, 1),
        ),
      ],
    );

    Widget playlist = ListView(
      children: [song, song, song],
    );

    return MaterialApp(
        title: "Profile page",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                children: [up, playlist],
              ),
            )));
  }
}
