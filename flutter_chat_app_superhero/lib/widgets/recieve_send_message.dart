import 'package:flutter/material.dart';

class ReceiveSendMessageWidget extends StatelessWidget {
  /*
  Foto message,
  Send message widget
   */
  bool receiveOrsender;
  String message;
  ReceiveSendMessageWidget(
      {required this.receiveOrsender, required this.message});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: receiveOrsender ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5)
          ],
          color: receiveOrsender ? Colors.white : Colors.deepPurple.shade400,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
              bottomRight: !receiveOrsender
                  ? const Radius.elliptical(10, 2)
                  : const Radius.circular(16),
              bottomLeft: !receiveOrsender
                  ? const Radius.circular(16)
                  : const Radius.elliptical(10, 2)),
        ),
        child: Text(
          message,
          style:
              TextStyle(color: receiveOrsender ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
