class GetNotificationSeenModel {
  int? userId;

  GetNotificationSeenModel({this.userId});

  GetNotificationSeenModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    return data;
  }
}