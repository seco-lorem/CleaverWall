//MODIFY THIS FILE ACCORDING TO YOUR API RESPONSE

class ResultModel {
  String? label;
  double? time;
  bool? valid;

  ResultModel({this.label, this.time, this.valid});

  ResultModel.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    time = json['time'] != -1 ? json['time'] : null;
    valid = json['valid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['time'] = time;
    data['valid'] = valid;
    return data;
  }

  @override
  toString(){
    if(valid == null) return "Error with the submission: $label";
    return valid! ? "Label: $label, Time:$time" : "Error with the submission: $label";
  }
}
