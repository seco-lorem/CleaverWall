import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/data/models/action_status.dart';

Future openDialog(BuildContext context) {
  FilePickerResult? result;
  File? file;
  return showDialog(
    context: context,
    builder: (context) => BlocBuilder<SubmissionBloc, SubmissionState>(
      builder: (context,state){
        return AlertDialog(
          title: const Text("Upload a file"),
          content: SizedBox(
            height: 200,
            child: Column(
              children: [
                TextButton(
                  child: const Text("Select a File"),
                  onPressed: () async {
                    result = await FilePicker.platform.pickFiles();
                    if (result != null) {
                      file = File(result!.files.single.path!);
                      context.read<SubmissionBloc>().add(FileSelected(file!));
                    }
                    // debugPrint("File: ${file == null ? "null" : file!.path}");
                  },
                ),
                Text("File: ${context.read<SubmissionBloc>().state.file == null ? "null" : context.read<SubmissionBloc>().state.file!.path}")
              ],
            ),
          ),
          actions: [
            context.read<SubmissionBloc>().state.uploadStatus == ActionStatus.submitting
                ? const CircularProgressIndicator()
                :
            TextButton(
              child: const Text("Upload"),
              onPressed: () {
                context.read<SubmissionBloc>().add(const UploadRequested());
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    ),
  );
}
