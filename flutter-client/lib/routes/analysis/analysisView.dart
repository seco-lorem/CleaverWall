import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/submissionResultDialog.dart';
import 'package:webclient/ui_components/dialogs/uploadFileDialog.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:file_picker/file_picker.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:cross_file/cross_file.dart';
import 'package:webclient/ui_components/dropdowns/modeSelectionDropDown.dart';

class AnalysisView extends StatefulWidget {
  const AnalysisView({super.key});

  @override
  State<AnalysisView> createState() => _AnalysisViewState();
}

class _AnalysisViewState extends State<AnalysisView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;
  late DropzoneViewController controller1;
  late DropzoneViewController controller2;
  bool highlighted1 = false;
  File? file;
  FilePickerResult? result;
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
          backgroundColor: softColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const DragTarget(),
                Text(
                    "File: ${context.read<SubmissionBloc>().state.file == null ? "null" : context.read<SubmissionBloc>().state.file!.path}")
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const OpenDialogWidget();
                  });
            },
            tooltip: 'Upload a file',
            backgroundColor: darkColor,
            child: const Icon(Icons.upload),
          ),
        );
      },
    );
  }
}

class DragTarget extends StatefulWidget {
  const DragTarget({Key? key}) : super(key: key);

  @override
  _DragTargetState createState() => _DragTargetState();
}

class _DragTargetState extends State<DragTarget> {
  final List<XFile> _list = [];
  File? file;
  FilePickerResult? result;
  bool dataUsePermission = false;
  int mode = 0;
  String bigValue = 'TBD';
  bool _dragging = false;

  Offset? offset;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmissionBloc, SubmissionState>(
        builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DropTarget(
            onDragDone: (detail) async {
              setState(() {
                _list.addAll(detail.files);
              });

              debugPrint('onDragDone:');
              for (final files in detail.files) {
                debugPrint('  ${files.path} ${files.name}'
                    '  ${await files.lastModified()}'
                    '  ${await files.length()}');
                context
                    .read<SubmissionBloc>()
                    .add(FileSelected(File(files.path)));
              }
            },
            onDragUpdated: (details) {
              setState(() {
                offset = details.localPosition;
              });
            },
            onDragEntered: (detail) {
              setState(() {
                _dragging = true;
                offset = detail.localPosition;
              });
            },
            onDragExited: (detail) {
              setState(() {
                _dragging = false;
                offset = null;
              });
            },
            child: Container(
              height: 300,
              width: 300,
              color: _dragging
                  ? Color.fromARGB(255, 33, 243, 114).withOpacity(0.4)
                  : Colors.black26,
              child: Stack(
                children: [
                  if (_list.isEmpty)
                    const Center(child: Text("Drop here"))
                  else
                    Text(_list.map((e) => e.path).join("\n")),
                  if (offset != null)
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '$offset',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                ],
              ),
            ),
          ),
          ModeSelectionDropdown(
            onChanged: (value) {
              switch (value) {
                case "TBD":
                  setState(() {
                    mode = 0;
                    bigValue = "TBD";
                  });
                  break;
                case "Static":
                  setState(() {
                    mode = 1;
                    bigValue = "Static";
                  });
                  break;
                case "Dynamic":
                  setState(() {
                    mode = 2;
                    bigValue = "Dynamic";
                  });
                  break;
              }
            },
            value: bigValue,
          ),
          CheckboxListTile(
            title: const Text("I agree to the data use policy"),
            value: dataUsePermission,
            onChanged: (bool? value) {
              setState(() {
                dataUsePermission = value!;
              });
            },
          ),
          context.read<SubmissionBloc>().state.uploadStatus ==
                  ActionStatus.submitting
              ? const CircularProgressIndicator()
              : TextButton(
                  child: const Text("Upload"),
                  onPressed: () {
                    context
                        .read<SubmissionBloc>()
                        .add(UploadRequested(dataUsePermission, mode));
                    Navigator.of(context).pop();
                  },
                )
        ],
      );
    });
  }
}
