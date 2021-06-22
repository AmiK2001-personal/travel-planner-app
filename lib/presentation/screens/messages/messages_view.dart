import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';
import 'package:travelplanner/domain/entities/travel/messages.dart';
import 'package:travelplanner/presentation/screens/messages/widgets/message_card.dart';
import 'package:velocity_x/velocity_x.dart';

class MessagesView extends StatefulWidget {
  final String chatId;
  const MessagesView({Key? key, required this.chatId}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<MessagesView> {
  final TravelRemoteDataSource travelRemoteDataSource = Get.find();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Messages>(
      stream: travelRemoteDataSource.getMessages(widget.chatId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.messages.isEmpty) {
            return "Сообщений нет".text.make();
          } else {
            final data = snapshot.data;
            return ListView.builder(
              itemCount: data!.messages.length,
              itemBuilder: (context, index) {
                return MessageCard(message: data.messages[index]);
              },
            ).centered();
          }
        } else if (snapshot.hasError) {
          return "Произошла при получении сообщений ошибка".text.makeCentered();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
