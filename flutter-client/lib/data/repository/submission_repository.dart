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
}
