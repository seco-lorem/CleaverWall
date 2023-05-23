import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/data/network/api/authentication_api.dart';
import 'package:webclient/data/network/api/submission_api.dart';
import 'package:webclient/data/network/dio_client.dart';
import 'package:webclient/data/repository/authentication_repository.dart';
import 'package:webclient/data/repository/submission_repository.dart';

import 'bloc/submission/submission_bloc.dart';
import 'navigation/routes.gr.dart';

Future<void> main() async {
  final dioClient = DioClient();
  final submissionApi = SubmissionApi(
    dioClient: dioClient,
  );
  final authenticationApi = AuthenticationApi(
    dioClient: dioClient,
  );
  final submissionRepository = SubmissionRepository(submissionApi);
  final authenticationRepository = AuthenticationRepository(authenticationApi);
  runApp(MyApp(dioClient: dioClient, authenticationRepository: authenticationRepository, submissionRepository: submissionRepository));
}

class MyApp extends StatefulWidget {
  final DioClient dioClient;
  final AuthenticationRepository authenticationRepository;
  final SubmissionRepository submissionRepository;
  const MyApp({super.key, required this.dioClient, required this.authenticationRepository, required this.submissionRepository});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
                authRepository: widget.authenticationRepository,),
          ),
          BlocProvider(
            create: (context) => SubmissionBloc(
                submissionRepository: widget.submissionRepository,),
          ),
        ],
        child: MaterialApp.router(
          title: 'CleaverWall',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ));
  }
}
