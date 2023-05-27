import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webclient/data/models/result_model.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/data/network/dio_client.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

Future submissionResultDialog(BuildContext context, ResultModel result) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: hardColor,
      title: Text("Result of submission", style: setFont(),),
      content: SizedBox(
        // color: hardColor!.withOpacity(0.2),
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
