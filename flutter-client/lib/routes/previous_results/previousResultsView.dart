import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class PreviousResultsView extends StatefulWidget {
  const PreviousResultsView({super.key});

  @override
  State<PreviousResultsView> createState() => _PreviousResultsViewState();
}

class _PreviousResultsViewState extends State<PreviousResultsView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocBuilder<SubmissionBloc, SubmissionState>(
          builder: (context, state) {
            return Scaffold(
              appBar: const DefaultAppBar(),
              backgroundColor: softColor,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    context.read<AuthenticationBloc>().state.authStatus ==
                            AuthenticationStatus.authenticated
                        ? Column(
                            children: [
                              TextButton(
                                  onPressed: () async {
                                    context.read<SubmissionBloc>().add(
                                        SubmissionListRequested(context
                                                .read<AuthenticationBloc>()
                                                .state
                                                .authStatus ==
                                            AuthenticationStatus
                                                .authenticated));
                                  },
                                  child: Text("Click to refresh", style: setFont())),
                              RefreshIndicator(
                                  onRefresh: () async {
                                    context.read<SubmissionBloc>().add(
                                        SubmissionListRequested(context
                                                .read<AuthenticationBloc>()
                                                .state
                                                .authStatus ==
                                            AuthenticationStatus
                                                .authenticated));
                                  },
                                  child: Container(
                                    child: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.8,
                                      width: double.infinity,
                                      child: ListView(
                                        children: [
                                          Center(
                                            child: Text(
                                                "Submission count: ${context.read<SubmissionBloc>().state.submissionList.length}"),
                                          ),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: context
                                                  .read<SubmissionBloc>()
                                                  .state
                                                  .submissionList
                                                  .length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                final currentItem = context
                                                    .read<SubmissionBloc>()
                                                    .state
                                                    .submissionList[index];
                                                return ListTile(
                                                  title: Text(
                                                      "${currentItem.file}"),
                                                  subtitle: Text(
                                                      "Submission ID: ${currentItem.id}, "
                                                          "Date Submitted: ${currentItem.submitTime?.day}.${currentItem.submitTime?.month}.${currentItem.submitTime?.year},"
                                                          " ${currentItem.submitTime?.hour}:${currentItem.submitTime?.minute}:${currentItem.submitTime?.second}"
                                                          " ${currentItem.result.toString()}"),
                                                );
                                              }),
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        : const Text("Please login first!"),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
