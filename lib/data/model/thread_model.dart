class ThreadModel {
  String? id;
  String? object;
  int? createdAt;

  ThreadModel({this.id, this.object, this.createdAt});

  ThreadModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    createdAt = json['created_at'];
  }
}