/*class Phones {
  final String text;
  final double number;

  Phones({
    required this.text,
    required this.number,
  });
}

Phones.fromJson(Map<String, dynamic> json) {
    var texto = json['text'];
    var numero = json['number'];
  }*/

class Phones {
  String? text;
  double? number;

  Phones({this.text, this.number});

  Phones.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['number'] = number;
    return data;
  }
}
