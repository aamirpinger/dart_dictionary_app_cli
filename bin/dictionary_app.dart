import 'dart:io';

import 'service/dictionary_service.dart';

void main(List<String> arguments) {
  if (arguments.length != 1) {
    print(
        'Argument missing Error: Correct syntax - dart run dictionary_app WORD');
    exit(1);
  }

  DictionaryService().getData(arguments.first);
}
