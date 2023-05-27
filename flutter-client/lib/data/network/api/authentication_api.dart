import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

class AuthenticationApi {
  final DioClient dioClient;
  final redirectOptions = Options(
      followRedirects: false,
      validateStatus: (status) { return status! < 500; }
  );
  AuthenticationApi({required this.dioClient});

  Future<Response> signIn(String username, String password, {String? url}) async {
    String reqURL;
    if(url == null){
      reqURL = '${Endpoints.baseURL}${Endpoints.user}${Endpoints.login}/';
    }
    else{
      reqURL = url;
    }
    try {
      final Response response = await dioClient
          .post(reqURL, data: {
        'username': username,
        'password': password,
      }, options: redirectOptions
      );
      debugPrint("HERE IS MY STACKTRACE");
      if(response.statusCode == 200){
        debugPrint("statusCode == 200");
        if(kIsWeb){
          debugPrint("kIsWeb");
          return response;
        }
        // debugPrint("1. ${response.headers.toString()}");
        // debugPrint("2. ${response.headers["set-cookie"]!.toString()}");
        // debugPrint("3. ${response.headers["set-cookie"]![0].toString()}");
        // debugPrint("4. ${response.headers["set-cookie"]![0].split(";")[0].toString()}");
        // debugPrint("5. ${response.headers["set-cookie"]![0].split(";")[0].split("=")[1].toString()}");
        String csrftoken =
        response.headers["set-cookie"]![0].split(";")[0].split("=")[1];
        String sessionid =
        response.headers["set-cookie"]![1].split(";")[0].split("=")[1];
        debugPrint("csrftoken: $csrftoken, sessionid: $sessionid");
        dioClient.updateCookie(csrftoken, sessionid);
      }
      else if(response.statusCode == 307){
        String location = response.headers["location"]![0];
        return signIn(username, password, url: location);
      }
      debugPrint("HERE IS MY STACKTRACE 2");
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> signUp(String username, String password, String password2, {String? url} ) async {
    String reqURL;
    if(url == null){
      reqURL = '${Endpoints.baseURL}${Endpoints.user}${Endpoints.registration}/';
    }
    else{
      reqURL = url;
    }
    try {
      final Response response = await dioClient
          .post(reqURL, data: {
        'username': username,
        'password1': password,
        'password2': password2,
      }, options: redirectOptions);
      if(response.statusCode == 307){
        String location = response.headers["Location"]![0];
        return signUp(username, password, password2, url: location);
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> signOut({String? url}) async {
    String reqURL;
    if(url == null){
      reqURL = '${Endpoints.baseURL}${Endpoints.user}${Endpoints.logout}/';
    }
    else{
      reqURL = url;
    }
    try {
      final Response response =
          await dioClient.post(reqURL, options: redirectOptions);
      if(response.statusCode== 200){
        dioClient.clearCookie();
      }
      if(response.statusCode == 307){
        String location = response.headers["Location"]![0];
        return signOut(url: location);
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
