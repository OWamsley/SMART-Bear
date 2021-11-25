import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.text, required this.isCurrentUser})
      : super(key: key);

  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          isCurrentUser ? 64.0 : 16.0, 4.0, isCurrentUser ? 16.0 : 64.0, 4.0),
      child: Align(
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: isCurrentUser ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: isCurrentUser ? Colors.white : Colors.black87),
                ))),
      ),
    );
  }
}
