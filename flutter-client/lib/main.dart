import 'package:flutter/material.dart';
import 'package:webclient/data/network/api/submission_api.dart';
import 'package:webclient/data/network/dio_client.dart';
import 'package:webclient/data/repository/submission_repository.dart';

import 'navigation/routes.gr.dart';

Future<void> main() async{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  final DioClient dioClient = DioClient();
  final submisionRepository = SubmissionRepository(
    SubmissionApi(
      dioClient: DioClient(),
    ),
  );

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CleaverWall',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
