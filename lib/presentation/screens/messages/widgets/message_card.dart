import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';
import 'package:velocity_x/velocity_x.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  const MessageCard({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return message.text.text.make();
  }
}
