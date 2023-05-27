import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: softColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Click on Login to login, or Sign Up to sign up.\n'
                'Keep in mind that in order to do analysis you have to be logged in.\n'
                'Click on Home to go to the home page. Currently it only shows the platform you\'re using CleaverWall from.\n'
                'Click on Analysis to go to the analysis page. There you can upload a file to be analyzed.\n'
                '- Select the file you want to analyze by clicking on the Choose File button at the bottom right.\n'
                '- You can choose whether to opt-in to data collection of CleaverWall.\n'
                '- Additionally, you can choose what kind of analysis you want on your file through the dropdown menu\n'
                'Click on Previous Results to see the results of your previous analyses.\n'
                'Click on Help to see this page.\n'
                'Click on Logout to logout.\n'),
          ],
        ),
      ),
    );
  }
}
