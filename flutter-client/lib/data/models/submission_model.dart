//MODIFY THIS FILE ACCORDING TO YOUR API RESPONSE

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:webclient/data/models/result_model.dart';

class SubmissionModel {
  int? id;
  String? file;
  int? mode;
  int? state;
  bool? dataUsePermission;
  DateTime? submitTime;
  ResultModel? result;
  int? user;

  SubmissionModel(
      {this.id,
      this.file,
      this.mode,
      this.state,
      this.dataUsePermission,
      this.submitTime,
      this.result,
      this.user});

  SubmissionModel.fromJson(Map<String, dynamic> json) {
    debugPrint("json: $json");
    id = json['id'];
    file = json['file'];
    mode = json['mode'];
    state = json['state'];
    dataUsePermission = json['dataUsePermission'];
    submitTime = DateTime.parse(json['submitTime']);
    // result =
    //     json['result'] != null ? ResultModel.fromJson(json['result']) : null;
    result = null;
    user = json['user'];
    debugPrint(toString());
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

  @override
  toString(){
    return "id: $id, file: $file, mode: $mode, state: $state, dataUsePermission: $dataUsePermission, submitTime: $submitTime, result: $result, user: $user";
  }
}
