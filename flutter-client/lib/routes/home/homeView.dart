import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/loginTestDialog.dart';

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
          loginTestDialog(context);
        },
        tooltip: 'Upload a file',
        child: const Icon(Icons.login),
      ),
    );
  }
}
