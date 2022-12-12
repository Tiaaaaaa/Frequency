import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget frequencyAccount = Row(
      children: [
        // Frequency's Logo
        Container(
          padding: EdgeInsets.all(20),
          child: const Icon(
            Icons.music_note,
            color: Color.fromRGBO(109, 234, 163, 1),
            size: 50,
          ),
        ),
        const Text(
          "Frequency account",
          style:
              TextStyle(color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
        )
      ],
    );

    Widget googleAccount = InkWell(
        onTap: () {
          print("google");
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/google-logo.png", height: 50),
            ),
            const Text(
              "Google account",
              style: TextStyle(
                  color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
            )
          ],
        ));

    Widget appleIdAccount = InkWell(
        onTap: () => {print("Apple")},
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/apple-logo.png", height: 50),
            ),
            const Text(
              "Apple account",
              style: TextStyle(
                  color: Color.fromRGBO(109, 234, 163, 1), fontSize: 40),
            )
          ],
        ));

    const border =
        BorderSide(color: Color.fromRGBO(235, 120, 110, 0.5), width: 10);

    return Scaffold(
        bottomNavigationBar: const Footer(),
        body: Center(
            heightFactor: 500,
            child: Container(
              height: 300,
              width: 500,
              decoration: const BoxDecoration(
                  border: Border(bottom: border, top: border)),
              child: Column(
                children: [frequencyAccount, googleAccount, appleIdAccount],
              ),
            )));
  }
}
