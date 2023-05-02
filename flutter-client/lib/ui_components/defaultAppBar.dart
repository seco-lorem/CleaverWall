import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/navigation/routes.gr.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationBloc authenticationBloc2 = context.read<AuthenticationBloc>();
    return BlocBuilder(
      bloc: authenticationBloc2,
      builder: (context,state) {
        AuthenticationBloc authenticationBloc = context.read<AuthenticationBloc>();
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
              authenticationBloc.state.authStatus == AuthenticationStatus.authenticated ?
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: const Text(
                              'Sign Out',
                              textScaleFactor: 0.9,
                            ),
                            onPressed: () {
                              authenticationBloc.add(const SignOutRequested());
                            },
                          ),
                        ],
                      ),
                    ],
                  ) :
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
                        context.router.push(const RegisterRoute());
                      },
                    ),
                    TextButton(
                      child: const Text(
                        'Login',
                        textScaleFactor: 0.9,
                      ),
                      onPressed: () {
                        context.router.push(const UserRoute());
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
