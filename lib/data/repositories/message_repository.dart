import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dfunc/dfunc.dart';

import 'package:travelplanner/core/datasources/id.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';

abstract class MessageRemoteDataSource {
  Future<void> send(Message message, Id chatId);
  Future<Stream<Message>> getMessages(Id chatId);
  Future<Either<Message, MessageError>> getMessage(Id messageId, Id chatId);
}

enum MessageError { messageNotFounded }

class MessageRemoteDataSourceImpl extends MessageRemoteDataSource {
  FirebaseFirestore firestore;
  late CollectionReference<Map<String, dynamic>> chats;

  MessageRemoteDataSourceImpl({required this.firestore}) {
    chats = firestore.collection("chats");
  }

  @override
  Future<Either<Message, MessageError>> getMessage(Id messageId, Id chatId) {
    return chats.doc(chatId.id).get().then((value) {
      final data = value.data();
      if (data != null) {
        return Either.left(Message.fromJson(data));
      } else {
        return const Either.right(MessageError.messageNotFounded);
      }
    });
  }

  @override
  Future<Stream<Message>> getMessages(Id chatId) async {
    // TODO check data
    return chats
        .doc(chatId.id)
        .snapshots()
        .asyncMap((event) => Message.fromJson(event.data()!));
  }

  @override
  Future<void> send(Message message, Id chatId) {
    return chats.doc(chatId.id).set(message.toJson());
  }
}
