//MODIFY THIS FILE ACCORDING TO YOUR API RESPONSE

class ResultModel {
  String? label;
  double? time;
  bool? valid;

  ResultModel({this.label, this.time, this.valid});

  ResultModel.fromJson(Map<String, dynamic> json) {
    label = json['id'];
    time = json['email'];
    valid = json['first_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = label;
    data['email'] = time;
    data['first_name'] = valid;
    return data;
  }
}