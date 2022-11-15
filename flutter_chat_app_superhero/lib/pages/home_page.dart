// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../widgets/user_list_widget.dart';
import 'message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> users = chats.map((hero) {
    return UserListWidget(hero.time, hero.sender.imageUrl, hero.text,
        hero.sender.name, hero.sender.isOnline);
  }).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Messega APP"),
          elevation: 10,
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.search)],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MessegaPage(chats[index].sender)));
                    },
                    child: users[index]);
              }),
        ));
  }
}
