import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  String imagePath;
  bool isOnline;

  UserImageWidget(this.isOnline, {required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: isOnline
              ? Border.all(width: 2, color: Colors.green)
              : Border.all(),
          boxShadow: const [
            BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 2)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(2.0), //isOnline propertiy
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
