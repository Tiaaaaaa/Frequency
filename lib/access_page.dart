import 'package:flutter/material.dart';
import 'package:frequency/profile_page.dart';
import 'package:frequency/variabiles.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double SCREENWIDTH = MediaQuery.of(context).size.width;

    Widget frequencyAccount = InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
        child: Row(
          children: [
            // Frequency's Logo
            Container(
              padding: const EdgeInsets.all(20),
              child: Icon(
                Icons.music_note,
                color: secundaryColor,
                size: 0.1 * SCREENWIDTH,
              ),
            ),
            Text(
              "Frequency account",
              style: TextStyle(
                  color: secundaryColor, fontSize: 0.04 * SCREENHEIGHT),
            )
          ],
        ));

    Widget googleAccount = InkWell(
        onTap: () {
          print("google");
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/google-logo.png",
                  height: 0.1 * SCREENWIDTH),
            ),
            Text(
              "Google account",
              style: TextStyle(
                  color: secundaryColor, fontSize: 0.04 * SCREENHEIGHT),
            )
          ],
        ));

    Widget appleIdAccount = InkWell(
        onTap: () => {print("Apple")},
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/apple-logo.png",
                  height: 0.1 * SCREENWIDTH),
            ),
            Text(
              "Apple account",
              style: TextStyle(
                  color: secundaryColor, fontSize: 0.04 * SCREENHEIGHT),
            )
          ],
        ));

    const border =
        BorderSide(color: Color.fromRGBO(235, 120, 110, 0.5), width: 10);

    return Scaffold(
        body: Center(
            child: Container(
      height: 0.3 * SCREENHEIGHT,
      width: SCREENWIDTH,
      decoration:
          const BoxDecoration(border: Border(bottom: border, top: border)),
      child: Column(
        children: [frequencyAccount, googleAccount, appleIdAccount],
      ),
    )));
  }
}
