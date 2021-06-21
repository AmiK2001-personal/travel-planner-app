import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';
import 'package:travelplanner/presentation/screens/messages/widgets/message_card.dart';
import 'package:velocity_x/velocity_x.dart';

class Messages extends StatefulWidget {
  final String chatId;
  const Messages({Key? key, required this.chatId}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final TravelRemoteDataSource travelRemoteDataSource = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Message>?>(
      future: travelRemoteDataSource.getMessages(widget.chatId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return "Сообщений нет".text.make();
          } else {
            final messages = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                return MessageCard(message: messages![index]);
              },
            );
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
