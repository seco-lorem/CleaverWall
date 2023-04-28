import 'package:dio/dio.dart';
import 'package:webclient/data/models/submission_model.dart';
import 'package:webclient/data/network/api/submission_api.dart';
import 'package:webclient/data/network/dio_exception.dart';

class SubmissionRepository {
  final SubmissionApi submissionApi;

  SubmissionRepository(this.submissionApi);

  Future<List<SubmissionModel>> getUsersRequested() async {
    try {
      final response = await submissionApi.getSubmissionList();
      final users = (response.data['data'] as List)
          .map((e) => SubmissionModel.fromJson(e))
          .toList();
      return users;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  // Future<List<SubmissionModel>> getUsersRequested() async {
  //   try {
  //     final response = await userApi.getUsersApi();
  //     final users = (response.data['data'] as List)
  //         .map((e) => SubmissionModel.fromJson(e))
  //         .toList();
  //     return users;
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
  //
  // Future<NewUser> addNewUserRequested(String name, String job) async {
  //   try {
  //     final response = await userApi.addUserApi(name, job);
  //     return NewUser.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
  //
  // Future<NewUser> updateUserRequested(int id, String name, String job) async {
  //   try {
  //     final response = await userApi.updateUserApi(id, name, job);
  //     return NewUser.fromJson(response.data);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
  //
  // Future<void> deleteNewUserRequested(int id) async {
  //   try {
  //     await userApi.deleteUserApi(id);
  //   } on DioError catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e).toString();
  //     throw errorMessage;
  //   }
  // }
}