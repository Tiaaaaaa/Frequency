import 'package:flutter/material.dart';
import 'package:frequency/footer.dart';
import 'package:frequency/variabiles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SCREENHEIGHT = MediaQuery.of(context).size.height * 0.7;
    final SCREENWIDTH = MediaQuery.of(context).size.width;

    Widget header = Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/avicii.jpg'),
          radius: 10,
        ),

        /*  ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: Image.asset(
            'assets/images/avicii.jpg',
            scale: 20,
          ),
        ),*/
        Text("  Username")
      ],
    );

    return Scaffold(
        bottomNavigationBar: const Footer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              backgroundColor: backgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                background: sampleImage,
                title: header,
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                mainAxisExtent: 100.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.blue[100 * (index % 9)],
                    child: Text('Post number: $index'),
                  );
                },
                childCount: 200,
              ),
            ),
          ],
        ));
  }
}

class Song extends StatefulWidget {
  const Song({super.key});

  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Text(
              "The Days - The Days",
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
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
