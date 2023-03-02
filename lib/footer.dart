import 'package:flutter/material.dart';
import 'package:frequency/direct_messages.dart';
import 'package:frequency/map_page.dart';
import 'package:frequency/profile_page.dart';
import 'package:frequency/variabiles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DMPage()),
                  );
                },
                child: const Icon(
                  Icons.message,
                  size: 40,
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MapPage()),
                  );
                },
                child: const Icon(
                  Icons.map,
                  size: 40,
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: const Icon(
                  Icons.portrait,
                  size: 40,
                )),
          ],
        ));
  }
}
