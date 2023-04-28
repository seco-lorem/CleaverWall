import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

Future loginTestDialog(BuildContext context) {
  FilePickerResult? result;
  File? file = null;
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Click to login"),
      content: Container(
        height: 50,
        child: Column(
          children: [
            TextButton(
              child: const Text("Click to login"),
              onPressed: () async {
                final dio = context.read<DioClient>();
                final response = await dio.post(
                  '${Endpoints.baseURL}/user/login',
                  data: {
                    'username': 'aea',
                    'password': 'inscalisir159',
                  },
                );
                debugPrint(response.toString());
              },
            ),
            //Text("File: ${file == null ? "null" : file!.path}"),
          ],
        ),
      ),
      actions: [],
    ),
  );
}
