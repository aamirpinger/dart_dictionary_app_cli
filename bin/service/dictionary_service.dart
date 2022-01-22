import 'dart:convert';

import 'package:http/http.dart' as http;
import '../class/dictionary.dart';

class DictionaryService {
  final _apiUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/';

  void getData(String word) async {
    http.Response response = await http.get(Uri.parse('${_apiUrl}${word}'));

    if (response.statusCode != 200) {
      throw Exception('Something went wrong, status code: ${response.statusCode}');
    }

    var parsedData = jsonDecode(response.body);
    Dictionary dictionary = Dictionary.fromJson(parsedData);
    print(dictionary);
  }
}
