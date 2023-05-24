import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/data/network/api/endpoints.dart';
import 'package:webclient/navigation/routes.gr.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class OptionsView extends StatefulWidget {
  const OptionsView({super.key});

  @override
  State<OptionsView> createState() => _OptionsViewState();
}

class _OptionsViewState extends State<OptionsView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;

  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: softColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     "Current URL code is: ${Endpoints.urlCode}",
                  //     style: setFont(),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: urlController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'URL Code',
                        hintText: 'Enter your URL Code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      style: setFont(),
                      cursorColor: softColor,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          final url = urlController.text;
                          Endpoints.setBaseURL(url);
                          // context.router.replaceAll([const OptionsRoute()]);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: softColor,
                          backgroundColor: darkColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text('Set'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
