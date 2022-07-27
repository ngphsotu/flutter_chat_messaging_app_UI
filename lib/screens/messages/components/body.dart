import 'message.dart';
import '/constants.dart';
import 'chat_input_field.dart';
import '/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demoChatMessages[index],
              ),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
