import 'dart:convert';

class LoveNews {
  String id;
  String? name;
  String? detail;
  LoveNews({
    required this.id,
    this.name,
    this.detail,
  });

  LoveNews copyWith({
    String? id,
    String? name,
    String? detail,
  }) {
    return LoveNews(
      id: id ?? this.id,
      name: name ?? this.name,
      detail: detail ?? this.detail,
    );
  }

  Map<String, dynamic> toMap() {
  
  return <String,dynamic>{
    'id':id,
    'name':name,
    'detail':detail,
  };
    
  }

  factory LoveNews.fromMap(Map<String, dynamic> map) {
    return LoveNews(
      id: map['id'] ?? '',
      name: map['name'],
      detail: map['detail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoveNews.fromJson(String source) => LoveNews.fromMap(json.decode(source));

  @override
  String toString() => 'LoveNews(id: $id, name: $name, detail: $detail)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LoveNews &&
      other.id == id &&
      other.name == name &&
      other.detail == detail;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ detail.hashCode;
}
