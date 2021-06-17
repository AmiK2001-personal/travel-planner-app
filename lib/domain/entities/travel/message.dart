import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/core/datasources/id.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    @JsonKey(name: 'sender_id') required Id senderId,
    @JsonKey(name: 'sending_time') required DateTime sendingTime,
    @JsonKey(name: 'text') required String text,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
