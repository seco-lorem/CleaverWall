import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

class SubmissionApi {
  final DioClient dioClient;
  final redirectOptions = Options(
      followRedirects: false,
      validateStatus: (status) { return status! < 500; }
  );

  SubmissionApi({required this.dioClient});


  Future<Response> getSubmissionList({String? url}) async {
    String reqURL;
    if(url == null){
      reqURL = '${Endpoints.submission}/';
    }
    else{
      reqURL = url;
    }
    try {
      debugPrint("getSubmissionList: $reqURL");
      final Response response = await dioClient.get(reqURL, options: redirectOptions);
      debugPrint("getSubmissionList: ${response.data.toString()}");
      if(response.statusCode == 307){
        String location = response.headers["Location"]![0];
        return getSubmissionList(url: location);
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> uploadSubmission(FormData file, int mode, bool dataUsePermission, {String? url}) async{
    String reqURL;
    if(url == null){
      reqURL = '${Endpoints.submission}/';
    }
    else{
      reqURL = url;
    }
    try{
      final Response response = await dioClient.post(reqURL, data: file, options: redirectOptions);
      if(response.statusCode == 307){
        String location = response.headers["Location"]![0];
        return uploadSubmission(file, mode, dataUsePermission, url: location);
      }
      return response;
    }catch(e){
      rethrow;
    }
  }

}
