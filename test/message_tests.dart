// Import the test package and Counter class
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:travelplanner/core/datasources/id.dart';
import 'package:travelplanner/data/repositories/message_repository.dart';
import 'package:travelplanner/dependency_injection.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';

void main() {
  test('Send message', () async {
    await Firebase.initializeApp();
    await init().whenComplete(() {
      final messageRemoteDataSource = Get.find<MessageRemoteDataSource>();
      final msg = Message(
          senderId: Id(id: "42342"),
          sendingTime: DateTime.now().toString(),
          text: "Hello");
      messageRemoteDataSource.send(msg, Id(id: "uhgrhgrhu"));
    });
  });
}
