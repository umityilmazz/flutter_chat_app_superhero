import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';
import '../widgets/recieve_send_message.dart';
import '../widgets/send_messega_widget.dart';

class MessegaPage extends StatefulWidget {
  User user;
  MessegaPage(this.user);

  @override
  State<MessegaPage> createState() => _MessegaPageState();
}

class _MessegaPageState extends State<MessegaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                widget.user.name,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                widget.user.isOnline ? "Online" : "Ofline",
                style: const TextStyle(color: Colors.white, fontSize: 9),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...messages.map((e) {
                return ReceiveSendMessageWidget(
                  receiveOrsender: e.sender == currentUser ? true : false,
                  message: e.text,
                );
              }).toList(),
              SendMessegaWidget()
            ],
          ),
        ));
  }
}
