import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webclient/data/models/result_model.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';

Future submissionResultDialog(BuildContext context, ResultModel result) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Result of submission"),
      content: Container(
        height: 50,
        child: Column(
          children: [
            Text("Label: ${result.label}"),
            Text("Time: ${result.time}"),
          ],
        ),
      ),
      actions: const [],
    ),
  );
}
