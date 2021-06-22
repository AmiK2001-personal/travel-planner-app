import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';

part 'messages.freezed.dart';
part 'messages.g.dart';

@freezed
class Messages with _$Messages {
  factory Messages({
    @JsonKey(name: 'messages') required List<Message> messages,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}
