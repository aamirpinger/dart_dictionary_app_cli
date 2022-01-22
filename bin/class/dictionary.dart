class Dictionary {
  Dictionary(
      {required this.word, required this.meaning, required this.sentence});

  final String word;
  final String meaning;
  final String sentence;

  static Dictionary fromJson(List<dynamic> json) => Dictionary(
        word: json.first['word'] as String,
        meaning: json.first['meanings']?.first?['definitions']
            ?.first['definition'] as String,
        sentence: json.first['meanings']?.first?['definitions']
            ?.first['example'] as String,
      );

  @override
  String toString() => '''
  Word: $word

  Meaning: $meaning

  Sentence: $sentence
  ''';
}
