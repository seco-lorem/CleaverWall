import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';

class PreviousResultsView extends StatefulWidget {
  const PreviousResultsView({super.key});

  @override
  State<PreviousResultsView> createState() => _PreviousResultsViewState();
}

class _PreviousResultsViewState extends State<PreviousResultsView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Previous results!"),
          ],
        ),
      ),
    );
  }
}
