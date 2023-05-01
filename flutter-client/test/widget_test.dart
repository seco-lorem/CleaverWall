// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

import 'package:webclient/main.dart';

void main() {
  group('dio test', () {
    final DioClient dio = DioClient();
    late final String csrftoken;
    late final String sessionid;
    test('login asf', () async {
      final response = await dio.post(
        '${Endpoints.baseURL}/user/login/',
        data: {
          "username": "aea",
          "password": "inscalisir159",
        },
      );
      csrftoken = response.headers["Set-Cookie"]![0]!.split(";")[0].split("=")[1];
      sessionid = response.headers["Set-Cookie"]![1]!.split(";")[0].split("=")[1];
      dio.updateCookie(csrftoken, sessionid);
      // debugPrint(response.toString());
      // debugPrint(csrftoken);
      // debugPrint(sessionid);
      // debugPrint(response.headers.toString());
    });
    test('submissionlist', () async {
      final response = await dio.get(Endpoints.submission);
      debugPrint(response.toString());
      // debugPrint(response.toString());
      // debugPrint(csrftoken);
      // debugPrint(sessionid);
      // debugPrint(response.headers.toString());
    });
  });
}
