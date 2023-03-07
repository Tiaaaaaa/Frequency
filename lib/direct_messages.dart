import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';
import 'package:frequency/variabiles.dart';

import 'chat_page.dart';

class DMPage extends StatelessWidget {
  const DMPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header = Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/avicii.jpg'),
          radius: 10,
        ),
        Text("  Username")
      ],
    );

    BorderSide bs = BorderSide(color: borderColor, width: 2);
    Border border = Border(bottom: bs, left: bs, right: bs, top: bs);

    Widget chats = CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: backgroundColor,
          flexibleSpace: FlexibleSpaceBar(
            title: header,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Chat(index.toString())),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(border: border, color: primaryColor),
                  child: Text(index.toString()),
                ),
              );
            },
          ),
        ),
      ],
    );

    return Scaffold(
      bottomNavigationBar: const Footer(),
      body: chats,
    );
  }
}
