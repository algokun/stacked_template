import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_template/app/locator.dart';

import 'http_service.dart';

@Singleton(as: HTTPService)
class HTTPServiceImpl implements HTTPService {
  @override
  Future fetchData({String url}) async {
    final fetchUrl = Uri.encodeFull(url);
    final headers = {"Accept": "application/json"};

    final Client _client = locator<Client>();
    final response = await _client.get(fetchUrl, headers: headers);

    if (response?.statusCode != 200) {
      throw Exception("Error While Retrieving Data from Url");
    }

    JsonDecoder _decoder = new JsonDecoder();

    return _decoder.convert(response.body);
  }
}
