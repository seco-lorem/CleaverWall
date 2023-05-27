import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webclient/bloc/authentication/authentication_bloc.dart';
import 'package:webclient/bloc/submission/submission_bloc.dart';
import 'package:webclient/data/models/action_status.dart';
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

  // int _selectedIndex = 0;
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
                        ? Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              /*
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
                                      child: Text("Click to refresh",
                                          style: setFont())),
                                   */
                              Expanded(
                                flex: 45,
                                child: context
                                            .read<SubmissionBloc>()
                                            .state
                                            .listStatus !=
                                        ActionStatus.submitting
                                    ? RefreshIndicator(
                                        onRefresh: () async {
                                          context.read<SubmissionBloc>().add(
                                              SubmissionListRequested(context
                                                      .read<
                                                          AuthenticationBloc>()
                                                      .state
                                                      .authStatus ==
                                                  AuthenticationStatus
                                                      .authenticated));
                                        },
                                        child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.8,
                                          width: double.infinity,
                                          child: ListView(
                                            // scrollDirection: Axis.vertical,
                                            children: [
                                              // Center(
                                              //   child: Text(
                                              //       "Submission count: ${context.read<SubmissionBloc>().state.submissionList.length}"),
                                              // ),
                                              ListView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
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
                                                          " ${currentItem.result.toString()}",
                                                          style: setFont(
                                                              color: currentItem
                                                                          .result
                                                                          ?.label !=
                                                                      null
                                                                  ? currentItem
                                                                              .result!
                                                                              .label ==
                                                                          "benign"
                                                                      ? Colors
                                                                          .green
                                                                      : currentItem
                                                                              .result!
                                                                              .valid!
                                                                          ? Colors
                                                                              .red
                                                                          : Colors
                                                                              .blue
                                                                  : Colors
                                                                      .black)),
                                                      selected: index ==
                                                          context
                                                              .read<
                                                                  SubmissionBloc>()
                                                              .state
                                                              .selectedSubmission,
                                                      selectedColor: darkColor,
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                SubmissionBloc>()
                                                            .add(IndividualSubmissionRequested(
                                                                context
                                                                        .read<
                                                                            AuthenticationBloc>()
                                                                        .state
                                                                        .authStatus ==
                                                                    AuthenticationStatus
                                                                        .authenticated,
                                                                currentItem
                                                                    .id!));
                                                        setState(() {
                                                          context
                                                              .read<
                                                                  SubmissionBloc>()
                                                              .add(
                                                                  SetSelectedItem(
                                                                      index));
                                                        });
                                                      },
                                                    );
                                                  }),
                                            ],
                                          ),
                                        ))
                                    : CircularProgressIndicator(
                                        backgroundColor: softColor,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                hardColor!)),
                              ),
                              Expanded(
                                flex: 0,
                                child: Container(
                                  // width: 5,
                                  height: 550,
                                  color: hardColor,
                                  child: const Text(" "),
                                ),
                              ),
                              Expanded(
                                  flex: 45,
                                  child: Container(
                                      color: softColor,
                                      child: context
                                                  .read<SubmissionBloc>()
                                                  .state
                                                  .selectedSubmission ==
                                              null
                                          ? const Center(
                                              child: Text("Nothing selected."))
                                          : context
                                                      .read<SubmissionBloc>()
                                                      .state
                                                      .individualStatus ==
                                                  ActionStatus.submitting
                                              ? CircularProgressIndicator(
                                                  backgroundColor: softColor,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(hardColor!))
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 300,
                                                    color: hardColor,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Submission ID: ${context.read<SubmissionBloc>().state.individualResult!.id}",
                                                            style: setFont(
                                                                size: 20),
                                                          ),
                                                          Text(
                                                            "Filename: ${context.read<SubmissionBloc>().state.individualResult!.file}",
                                                            style: setFont(
                                                                size: 20),
                                                          ),
                                                          Text(
                                                            "Submission Time: ${context.read<SubmissionBloc>().state.individualResult!.submitTime?.day}.${context.read<SubmissionBloc>().state.individualResult!.submitTime?.month}.${context.read<SubmissionBloc>().state.individualResult!.submitTime?.year} | ${context.read<SubmissionBloc>().state.individualResult!.submitTime?.hour}:${context.read<SubmissionBloc>().state.individualResult!.submitTime?.minute}:${context.read<SubmissionBloc>().state.individualResult!.submitTime?.second}",
                                                            style: setFont(
                                                                size: 20),
                                                          ),
                                                          Text(
                                                            "Analysis Mode: ${analysisIdToString(context.read<SubmissionBloc>().state.individualResult!.mode!)}",
                                                            style: setFont(
                                                                size: 20),
                                                          ),
                                                          // Text(
                                                          //   "Queue State: ${context.read<SubmissionBloc>().state.individualResult!.state}",
                                                          //   style: setFont(
                                                          //       size: 20),
                                                          // ),
                                                          Text(
                                                            "Opted into Data Use Policy: ${context.read<SubmissionBloc>().state.individualResult!.dataUsePermission! ? "Yes" : "No"}",
                                                            style: setFont(
                                                                size: 20),
                                                          ),
                                                          Text(
                                                            "Result: ${context.read<SubmissionBloc>().state.individualResult!.result!.label == "benign" ? "The file is safe" : context.read<SubmissionBloc>().state.individualResult!.result!.label}",
                                                            style: setFont(
                                                                size: 30),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ))),
                            ],
                          )
                        : Text("Please login first!", style: setFont(size: 20)),
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
