import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webclient/navigation/routes.gr.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        'Help',
        textScaleFactor: 0.9,
      ),
      onPressed: () {
        context.router.push(const HelpRoute());
      },
    );
  }


}