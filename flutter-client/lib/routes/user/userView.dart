import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/uploadFileDialog.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authenticationBloc = context.read<AuthenticationBloc>();
    return BlocBuilder(
        bloc: authenticationBloc,
        builder: (context, state) {
          return Scaffold(
            appBar: const DefaultAppBar(),
            backgroundColor: softColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  authenticationBloc.state.authStatus ==
                          AuthenticationStatus.authenticated
                      ? ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                    'Welcome, ${authenticationBloc.state.user!.username}!'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    authenticationBloc
                                        .add(const SignOutRequested());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: softColor,
                                    backgroundColor: darkColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: authenticationBloc.state.status ==
                                          ActionStatus.submitting
                                      ? CircularProgressIndicator(
                                      backgroundColor: softColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(hardColor!))
                                      : const Text('Sign Out'),
                                ),
                              ),
                            ),
                          ],
                        )
                      : ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: usernameController,
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  labelText: 'Username',
                                  hintText: 'Enter your username',
                                  icon: Icon(Icons.person_outline),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                  icon: Icon(Icons.lock_outline),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: authenticationBloc.state.status ==
                                          ActionStatus.submitting
                                      ?  CircularProgressIndicator(
                                      backgroundColor: softColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(hardColor!))
                                      : ElevatedButton(
                                          onPressed: () {
                                            final username =
                                                usernameController.text;
                                            final password =
                                                passwordController.text;
                                            authenticationBloc.add(
                                                SignInRequested(
                                                    username, password));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: softColor,
                                            backgroundColor: darkColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          child: const Text('Sign In'),
                                        )),
                            )
                          ],
                        )
                ],
              ),
            ),
          );
        });
  }
}
