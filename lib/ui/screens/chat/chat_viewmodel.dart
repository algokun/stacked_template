import 'package:stacked/stacked.dart';
import 'package:stacked_template/app/locator.dart';
import 'package:stacked_template/core/models/chat/chat.dart';
import 'package:stacked_template/core/repositories/chat/chat_repo.dart';

class ChatViewModel extends BaseViewModel {
  final ChatRepo _chatRepo = locator<ChatRepo>();

  List<ChatModel> chats;

  onModelReady() async {
    await _chatRepo.getUsers();
    chats = _chatRepo.chatList;
    notifyListeners();
  }
}
