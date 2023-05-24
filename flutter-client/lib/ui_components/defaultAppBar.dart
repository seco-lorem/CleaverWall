import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/navigation/routes.gr.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';
import 'package:webclient/ui_components/widgets/helpButton.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationBloc authenticationBloc2 = context.read<AuthenticationBloc>();
    return BlocBuilder(
        bloc: authenticationBloc2,
        builder: (context, state) {
          AuthenticationBloc authenticationBloc =
              context.read<AuthenticationBloc>();
          return AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width:350,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      'assets/icons/CleaverWall_Circular.png',
                                      fit: BoxFit.cover,
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 130,
                                  ),
                                ],
                              ),
                              Text(
                                'CleaverWall v.0.1.2',
                                style: setFont(size: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Text(
                              'Home',
                              selectionColor: Colors.white,
                              style: setFont(),
                            ),
                            onPressed: () {
                              context.router.navigate(const HomeRoute());
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Analysis',
                              selectionColor: Colors.white,
                              style: setFont(),
                            ),
                            onPressed: () {
                              context.router.navigate(const AnalysisRoute());
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Previous Results',
                              selectionColor: Colors.white,
                              style: setFont(),
                            ),
                            onPressed: () {
                              context.router.navigate(const PreviousResultsRoute());
                            },
                          ),
                        ],
                      ),
                    ]),
                    SizedBox(
                      width: 350,
                      child: authenticationBloc.state.authStatus ==
                        AuthenticationStatus.authenticated
                        ? Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            const HelpButton(),
                            TextButton(
                              child: Text(
                                'Sign Out',
                                textScaleFactor: 0.9,
                                style: setFont(),
                              ),
                              onPressed: () {
                                authenticationBloc
                                    .add(const SignOutRequested());
                              },
                            ),
                          ],
                        ),
                      ],
                    )
                        : Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const HelpButton(),
                          TextButton(
                            child: Text(
                              'Sign Up',
                              textScaleFactor: 0.9,
                              style: setFont(),
                            ),
                            onPressed: () {
                              context.router.navigate(const RegisterRoute());
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Login',
                              textScaleFactor: 0.9,
                              style: setFont(),
                            ),
                            onPressed: () {
                              context.router.navigate(const UserRoute());
                            },
                          ),
                          //DropdownButton(items: drop, onChanged: onChanged)
                        ],
                      ),
                    ]),),

                  ],
                )),
              ],
            ),
            backgroundColor: hardColor,
          );
        });
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
