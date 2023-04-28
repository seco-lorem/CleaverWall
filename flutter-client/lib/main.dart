import 'package:flutter/material.dart';
import 'package:webclient/data/network/api/submission_api.dart';
import 'package:webclient/data/network/dio_client.dart';
import 'package:webclient/data/repository/submission_repository.dart';
import 'package:provider/provider.dart';

import 'navigation/routes.gr.dart';

Future<void> main() async{
  final dioClient = DioClient();
  final submissionApi = SubmissionApi(
    dioClient: dioClient,
  );
  final submissionRepository = SubmissionRepository(
      submissionApi
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});



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
