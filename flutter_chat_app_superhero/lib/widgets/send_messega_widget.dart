import 'package:flutter/material.dart';

class SendMessegaWidget extends StatefulWidget {
  const SendMessegaWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SendMessegaWidget> createState() => _SendMessegaWidgetState();
}

class _SendMessegaWidgetState extends State<SendMessegaWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.emoji_emotions_outlined),
          suffixIcon: Icon(Icons.send),
          hintText: "Mesajınızı yazın",
        ),
      ),
    );
  }
}
