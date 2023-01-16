import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';

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
    );
  }
}