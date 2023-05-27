import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:webclient/data/models/submission_model.dart';
import 'package:webclient/data/network/api/submission_api.dart';
import 'package:webclient/data/network/dio_exception.dart';

class SubmissionRepository {
  final SubmissionApi submissionApi;

  SubmissionRepository(this.submissionApi);

  Future<List<SubmissionModel>> getSubmissionList() async {
    try {
      final response = await submissionApi.getSubmissionList();
      final list = (response.data as List)
          .map((e) => SubmissionModel.fromJson(e))
          .toList();
      debugPrint("list: $list");
      return list;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<SubmissionModel> getIndividualSubmission(int id) async {
    try {
      final response = await submissionApi.getIndividualSubmission(id);
      debugPrint("RESPONS: $response");
      final data = SubmissionModel.fromJson(response.data);
      debugPrint("submission: $data");
      return data;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<Response?> uploadSubmission(FormData file, int mode, bool dataUsePermission) async{
    try{
      final response = await submissionApi.uploadSubmission(file, mode, dataUsePermission);
      if(response.statusCode == 201){
        return response;
      }
      return null;
    }on DioError catch(e){
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
