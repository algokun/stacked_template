import 'package:stacked_template/core/models/chat/chat.dart';

abstract class ChatRepo {
  List<ChatModel> chatList;
  Future getUsers();
}
