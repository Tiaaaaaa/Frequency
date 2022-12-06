import 'package:flutter/material.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget frequencyAccount = Row(
      children: const [
        // Frequency's Logo
        Padding(
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.music_note,
            color: Color.fromRGBO(109, 234, 163, 1),
            size: 50,
          ),
        ),
        Text(
          "Frequency account",
          style:
              TextStyle(color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
        )
      ],
    );

    Widget googleAccount = Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset("assets/images/google-logo.png", height: 50),
        ),
        const Text(
          "Google account",
          style:
              TextStyle(color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
        )
      ],
    );

    Widget appleIdAccount = Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset("assets/images/apple-logo.png", height: 50),
        ),
        const Text(
          "Apple account",
          style:
              TextStyle(color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
        )
      ],
    );

    return MaterialApp(
        title: "Access Page",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Accedi"),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(58, 158, 102, 0.5),
            ),
            body: Center(
                child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(235, 120, 110, 0.5),
                          width: 10))),
              margin: const EdgeInsets.only(top: 300,left: 30),
              child: Column(
                children: [frequencyAccount, googleAccount, appleIdAccount],
              ),
            ))));
  }
}
