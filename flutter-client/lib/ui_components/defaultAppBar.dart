import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webclient/navigation/routes.gr.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text('CleaverWall'),
            ],
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text(
                    'Home',
                    selectionColor: Colors.white,
                  ),
                  onPressed: () {
                    context.router.push(const HomeRoute());
                  },
                ),
                TextButton(
                  child: const Text(
                    'Options',
                    selectionColor: Colors.white,
                  ),
                  onPressed: () {
                    context.router.push(const OptionsRoute());
                  },
                ),
                TextButton(
                  child: const Text(
                    'Analysis',
                    selectionColor: Colors.white,
                  ),
                  onPressed: () {
                    context.router.push(const AnalysisRoute());
                  },
                ),
                TextButton(
                  child: const Text(
                    'Previous Results',
                    selectionColor: Colors.white,
                  ),
                  onPressed: () {
                    context.router.push(const PreviousResultsRoute());
                  },
                ),
              ],
            ),
          ]),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text(
                    'Sign Up',
                    textScaleFactor: 0.9,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Signup functionality pop up",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
                TextButton(
                  child: const Text(
                    'Login',
                    textScaleFactor: 0.9,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Login functionality pop up",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
                //DropdownButton(items: drop, onChanged: onChanged)
              ],
            ),
          ]),
        ],
      ),
      backgroundColor: Colors.lightGreen,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
