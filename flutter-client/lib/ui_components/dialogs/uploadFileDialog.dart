import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/ui_components/dropdowns/modeSelectionDropDown.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class OpenDialogWidget extends StatefulWidget{
  const OpenDialogWidget({Key? key}) : super(key: key);

  @override
  State<OpenDialogWidget> createState() => _OpenDialogWidgetState();
}

class _OpenDialogWidgetState extends State<OpenDialogWidget> {
  File? file;
  FilePickerResult? result;
  bool dataUsePermission = false;
  int mode = 0;
  String bigValue = 'TBD';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmissionBloc, SubmissionState>(
  builder: (context, state) {
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
            Text(
                "File: ${context.read<SubmissionBloc>().state.file == null ? "null" : context.read<SubmissionBloc>().state.file!.path}"),
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
          ],
        ),
      ),
      actions: [
        context.read<SubmissionBloc>().state.uploadStatus ==
            ActionStatus.submitting
            ? CircularProgressIndicator(
            backgroundColor: softColor,
            valueColor: AlwaysStoppedAnimation<Color>(hardColor!))
            : TextButton(
          child: const Text("Upload"),
          onPressed: () {
            context.read<SubmissionBloc>().add(UploadRequested(dataUsePermission, mode));
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
  },
);
  }

}

// Future openDialog(BuildContext context) {
//   FilePickerResult? result;
//   File? file;
//   int mode;
//   bool dataUsePermission;
//   return showDialog(
//     context: context,
//     builder: (context) =>
//         BlocBuilder<SubmissionBloc, SubmissionState>(builder: (context, state) {
//           mode = 0;
//           dataUsePermission = false;
//       return AlertDialog(
//         title: const Text("Upload a file"),
//         content: SizedBox(
//           height: 200,
//           child: Column(
//             children: [
//               TextButton(
//                 child: const Text("Select a File"),
//                 onPressed: () async {
//                   result = await FilePicker.platform.pickFiles();
//                   if (result != null) {
//                     file = File(result!.files.single.path!);
//                     context.read<SubmissionBloc>().add(FileSelected(file!));
//                   }
//                   // debugPrint("File: ${file == null ? "null" : file!.path}");
//                 },
//               ),
//               Text(
//                   "File: ${context.read<SubmissionBloc>().state.file == null ? "null" : context.read<SubmissionBloc>().state.file!.path}"),
//               ModeSelectionDropdown(
//                   onChanged: (value) {
//                     switch (value) {
//                       case "TBD":
//                         mode = 0;
//                         value = "TBD";
//                         break;
//                       case "Static":
//                         mode = 1;
//                         value = "Static";
//                         break;
//                       case "Dynamic":
//                         mode = 2;
//                         value = "Dynamic";
//                         break;
//                     }
//                     debugPrint("Dropdown: $value");
//                   },
//                   value: "TBD",
//               ),
//               CheckboxListTile(
//                 title: const Text("I agree to the data use policy"),
//                 value: dataUsePermission,
//                 onChanged: (bool? value) {
//                   debugPrint("Checkbox: $value");
//                   dataUsePermission = !value!;
//                 },
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           context.read<SubmissionBloc>().state.uploadStatus ==
//                   ActionStatus.submitting
//               ? const CircularProgressIndicator()
//               : TextButton(
//                   child: const Text("Upload"),
//                   onPressed: () {
//                     context.read<SubmissionBloc>().add(UploadRequested(dataUsePermission, mode));
//                     Navigator.of(context).pop();
//                   },
//                 ),
//           TextButton(
//             child: const Text("Cancel"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     });
// }
