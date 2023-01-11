import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/navigation/routes.gr.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/uploadFileDialog.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            kIsWeb
                ? const Text("I'm on a web client!")
                : defaultTargetPlatform == TargetPlatform.windows
                    ? const Text("I'm on a desktop client!")
                    : const Text("Can't find the client I'm on"),
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
  }
}
