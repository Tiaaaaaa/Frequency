// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:frequency/profile_page.dart';
import 'package:frequency/access_page.dart';

void main() {
  runApp(const AccessPage());
}

class Frequency extends StatelessWidget {
  const Frequency({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frequency',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Frequency'),
        ),
        body: const Center(
          child: RandomWidget(),
        ),
      ),
    );
  }
}

class RandomWidget extends StatefulWidget {
  const RandomWidget({super.key});

  @override
  State<RandomWidget> createState() => _RandomWidgetState();
}

class _RandomWidgetState extends State<RandomWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return const Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        return ListTile(
          title: Text(
            "suca",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(
                    (index % 30) * 8, (index % 7) * 51, (index % 70) * 3, 1)),
          ),
        );
      },
    );
  }
}
