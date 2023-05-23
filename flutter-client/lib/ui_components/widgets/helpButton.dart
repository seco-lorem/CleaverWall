import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webclient/navigation/routes.gr.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(45, 45), // button width and height
      child: ClipOval(
        child: Material(
          color: hardColor, // button color
          child: InkWell(
            splashColor: Colors.amber[100], // splash color
            onTap: () {
              context.router.navigate(const HelpRoute());
            }, // button pressed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.help), // icon
                Text("Help"), // text
              ],
            ),
          ),
        ),
      ),
    );
  }
}
