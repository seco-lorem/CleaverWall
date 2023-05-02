import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

class SubmissionApi {
  final DioClient dioClient;

  SubmissionApi({required this.dioClient});


  Future<Response> getSubmissionList() async {
    try {
      final Response response = await dioClient.get("${Endpoints.submission}/");
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> uploadSubmission(FormData file, int mode, bool dataUsePermission) async{
    try{
      final Response response = await dioClient.post("${Endpoints.submission}/", data: file);
      return response;
    }catch(e){
      rethrow;
    }
  }

// Future<Response> getUsersApi() async {
//   try {
//     final Response response = await dioClient.get(Endpoints.users);
//     return response;
//   } catch (e) {
//     rethrow;
//   }
// }
//
// Future<Response> updateUserApi(int id, String name, String job) async {
//   try {
//     final Response response = await dioClient.put(
//       Endpoints.users + '/$id',
//       data: {
//         'name': name,
//         'job': job,
//       },
//     );
//     return response;
//   } catch (e) {
//     rethrow;
//   }
// }
//
// Future<void> deleteUserApi(int id) async {
//   try {
//     await dioClient.delete(Endpoints.users + '/$id');
//   } catch (e) {
//     rethrow;
//   }
// }
}