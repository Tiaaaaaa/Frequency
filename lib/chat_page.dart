import 'package:flutter/material.dart';
import 'package:frequency/variabiles.dart';

class Chat extends StatelessWidget {
  const Chat(this.nome, {super.key});

  final String nome;

  @override
  Widget build(BuildContext context) {
    Widget typeArea = const TextField(
      autocorrect: true,
      autofocus: true,
      style: TextStyle(),
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        leading: sampleImage,
        title: Text(nome),
        backgroundColor: backgroundColor,
      ),
      body: CustomScrollView(
        reverse: true,
        slivers: [
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return const MessageBox(Message("ciao", true));
            }, childCount: 50),
          ),
        ],
      ),
      bottomSheet: typeArea,
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox(this.mess, {super.key});

  final Message mess;

  @override
  Widget build(BuildContext context) {
    Color background;

    if (mess.recived) {
      background = backgroundColor;
    } else {
      background = primaryColor;
    }

    BorderSide border = BorderSide(color: borderColor, width: 1);

    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: border, top: border), color: background),
        width: 2,
        child: Text(mess.text));
  }
}

class Message {
  const Message(this.text, this.recived);

  final String text;
  final bool recived;
}
