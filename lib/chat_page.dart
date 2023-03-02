import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frequency/variabiles.dart';

class Chat extends StatelessWidget {
  const Chat(this.nome, {super.key});

  final String nome;

  @override
  Widget build(BuildContext context) {
    Widget typeArea = TextField(
      autocorrect: true,
      autofocus: true,
      style: TextStyle(),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(nome),
        backgroundColor: backgroundColor,
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

    BorderSide border = BorderSide(color: borderColor, width: 10);

    return Container(
        decoration: BoxDecoration(border: Border(bottom: border, top: border)),
        child: Text(mess.text));
  }
}

class Message {
  const Message(this.text, this.recived);

  final String text;
  final bool recived;
}
