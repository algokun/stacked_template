import 'package:injectable/injectable.dart';
import 'package:stacked_template/app/locator.dart';
import 'package:stacked_template/core/constants/api.dart';
import 'package:stacked_template/core/models/chat/chat.dart';
import 'package:stacked_template/core/repositories/chat/chat_repo.dart';
import 'package:stacked_template/core/services/http_service/http_service.dart';

@Singleton(as: ChatRepo)
class ChatRepoImpl implements ChatRepo {
  final HTTPService _httpService = locator<HTTPService>();

  List<ChatModel> chatList = List<ChatModel>();

  @override
  Future getUsers() async {
    var url = apiURL + users;
    var result = await _httpService.fetchData(url: url);

    (result as List).forEach((item) {
      ChatModel chatModel = ChatModel.fromJson(item);
      chatList.add(chatModel);
    });
  }
}
