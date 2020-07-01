import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
abstract class ChatModel implements _$ChatModel {
  const ChatModel._();

  factory ChatModel(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website}) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  static ChatModel empty() {
    return ChatModel(
        id: 0, name: '', username: '', email: '', phone: '', website: '');
  }
}
