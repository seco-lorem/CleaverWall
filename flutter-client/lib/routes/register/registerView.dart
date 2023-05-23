import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/dialogs/uploadFileDialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authenticationBloc = context.read<AuthenticationBloc>();
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
        bloc: authenticationBloc,
        listener: (context, state) {
      if (state.status == ActionStatus.success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("User created successfully"),
          ),
        );
      } else if (state.status == ActionStatus.failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("User creation failed"),
          ),
        );
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: const DefaultAppBar(),
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
                              child: authenticationBloc.state.status ==
                                      ActionStatus.submitting
                                  ? const CircularProgressIndicator()
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
                          child: TextField(
                            controller: password2Controller,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password (again)',
                              hintText: 'Enter your password AGAIN',
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
                                  ? const CircularProgressIndicator()
                                  : ElevatedButton(
                                      onPressed: () {
                                        final username =
                                            usernameController.text;
                                        final password =
                                            passwordController.text;
                                        final password2 =
                                            password2Controller.text;
                                        authenticationBloc.add(SignUpRequested(
                                            username, password, password2));
                                        usernameController.clear();
                                        passwordController.clear();
                                        password2Controller.clear();
                                        // Navigator.of(context).pop();
                                      },
                                      child: const Text('Sign Up'),
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
