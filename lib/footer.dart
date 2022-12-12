import 'package:flutter/material.dart';
import 'package:frequency/profile_page.dart';
import 'package:frequency/map_page.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color.fromRGBO(109, 234, 163, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                child: const Icon(
                  Icons.message,
                  size: 40,
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MapPage()),
                  );
                },
                child: const Icon(
                  Icons.map,
                  size: 40,
                )),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
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
