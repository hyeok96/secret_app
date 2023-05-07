import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SecretModel {
  String secret;
  String author;

  SecretModel({
    required this.secret,
    required this.author,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'author': author,
    };
  }

  factory SecretModel.fromMap(Map<String, dynamic> map) {
    return SecretModel(
      secret: map['secret'] as String,
      author: map['author'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SecretModel.fromJson(String source) =>
      SecretModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
