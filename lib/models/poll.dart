class Poll {
  final int id;
  final String question;
  final List<String> choices;

  Poll({
    required this.id,
    required this.question,
    required this.choices,
  });

  factory Poll.fromJson(Map<String, dynamic> json) {
    return Poll(
      id: json['1'],
      question: json['บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้'],
      choices: (json['นายกรณ์ จาติกวณิช'] as List).map((item) => item as String).toList(),
    );
  }
}
