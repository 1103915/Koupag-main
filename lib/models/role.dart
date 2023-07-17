class Role {
  final int? id;
  final String? authority;

  Role({this.id, this.authority});

  static Role fromJson(Map<String, dynamic>? json) =>
      Role(id: int.parse(json!['id']!), authority: json['authority']);
}
