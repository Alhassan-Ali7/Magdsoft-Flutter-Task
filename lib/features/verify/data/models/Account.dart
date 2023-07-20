class Account {
  Account({
      this.id, 
      this.name, 
      this.phone,});

  Account.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
  }
  int? id;
  String? name;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    return map;
  }

}