class Phones {
  late final String text;
  late final double numero;

  Phones({
    required this.text,
    required this.numero,
  });

  Phones.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    numero = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['number'] = numero;
    return data;
  }
}
