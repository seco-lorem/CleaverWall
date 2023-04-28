//MODIFY THIS FILE ACCORDING TO YOUR API RESPONSE

import 'dart:io';

import 'package:webclient/data/models/result_model.dart';

class SubmissionModel {
  int? id;
  File? file;
  int? mode;
  int? state;
  bool? dataUsePermission;
  DateTime? submitTime;
  ResultModel? result;
  int? user;

  SubmissionModel({this.id, this.file, this.mode, this.state, this.dataUsePermission, this.submitTime, this.result, this.user});

  SubmissionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    file = json['file'];
    mode = json['mode'];
    state = json['state'];
    dataUsePermission = json['dataUsePermission'];
    submitTime = json['submitTime'];
    result = json['result'] != null ? ResultModel.fromJson(json['result']) : null;
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['file'] = file;
    data['mode'] = mode;
    data['state'] = state;
    data['dataUsePermission'] = dataUsePermission;
    data['submitTime'] = submitTime;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    data['user'] = user;
    return data;
  }
}