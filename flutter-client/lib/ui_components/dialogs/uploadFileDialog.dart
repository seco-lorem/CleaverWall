import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

Future openDialog(BuildContext context) {
  FilePickerResult? result;
  File? file = null;
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Upload a file"),
      content: Container(
        height: 50,
        child: Column(
          children: [
            TextButton(
              child: const Text("Select a File"),
              onPressed: () async {
                result = await FilePicker.platform.pickFiles();
                if (result != null) {
                  file = File(result!.files.single.path!);
                }
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
