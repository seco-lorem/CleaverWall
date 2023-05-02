import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/submissionResultDialog.dart';
import 'package:webclient/ui_components/dialogs/uploadFileDialog.dart';

class AnalysisView extends StatefulWidget {
  const AnalysisView({super.key});

  @override
  State<AnalysisView> createState() => _AnalysisViewState();
}

class _AnalysisViewState extends State<AnalysisView> {
  bool isWindows =
  defaultTargetPlatform == TargetPlatform.windows ? true : false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SubmissionBloc, SubmissionState>(
      listener: (context, state) {
        if (state.uploadStatus == ActionStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("File uploaded successfully"),
            ),
          );
          submissionResultDialog(context, state.result!);
        } else if (state.uploadStatus == ActionStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("File upload failed"),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const DefaultAppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("Analysis!"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              openDialog(context);
            },
            tooltip: 'Upload a file',
            child: const Icon(Icons.upload),
          ),
        );
      },
    );
  }
}
