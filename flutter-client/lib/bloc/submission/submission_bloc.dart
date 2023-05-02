import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:meta/meta.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/data/models/result_model.dart';
import 'package:webclient/data/models/submission_model.dart';
import 'package:webclient/data/repository/submission_repository.dart';
import 'package:path/path.dart' as path_extension;

part 'submission_event.dart';

part 'submission_state.dart';

class SubmissionBloc extends Bloc<SubmissionEvent, SubmissionState> {
  final SubmissionRepository _submissionRepository;

  SubmissionBloc({
    required SubmissionRepository submissionRepository,
  })  : _submissionRepository = submissionRepository,
        super(const SubmissionState()) {
    on<SubmissionListRequested>(_onSubmissionListRequested);
    on<FileSelected>(_onFileSelected);
    on<UploadRequested>(_onUploadRequested);
  }

  FutureOr<void> _onSubmissionListRequested(
      SubmissionListRequested event, Emitter<SubmissionState> emit) async {
    if (!event.authorized || state.listStatus == ActionStatus.submitting) {
      return;
    }
    emit(state.copyWith(listStatus: ActionStatus.submitting));
    try {
      final response = await _submissionRepository.getSubmissionList();
      emit(state.copyWith(
          listStatus: ActionStatus.success, submissionList: response));
      return emit(state.copyWith(listStatus: ActionStatus.initial));
    } catch (e) {
      emit(state.copyWith(
        listStatus: ActionStatus.failure,
      ));
      return emit(state.copyWith(
        listStatus: ActionStatus.initial,
      ));
    }
  }

  FutureOr<void> _onFileSelected(
      FileSelected event, Emitter<SubmissionState> emit) async {
    return emit(state.copyWith(file: event.file));
  }

  FutureOr<void> _onUploadRequested(
      UploadRequested event, Emitter<SubmissionState> emit) async {
    if (state.uploadStatus == ActionStatus.submitting) {
      return;
    }
    if (state.file == null ||
        path_extension.extension(state.file!.path) != ".exe") {
      emit(state.copyWith(uploadStatus: ActionStatus.failure));
      return emit(state.copyWith(uploadStatus: ActionStatus.initial));
    }
    emit(state.copyWith(uploadStatus: ActionStatus.submitting));
    try {
      final formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(state.file!.path,
            filename: state.file!.path.split('/').last,
            contentType: MediaType('application', 'x-msdownload')),
        "mode": 1,
        "data_use_permission": true,
      });
      final response =
          await _submissionRepository.uploadSubmission(formData, 1, true);
      emit(state.copyWith(uploadStatus: ActionStatus.success, result: ResultModel.fromJson(response!.data["result"])));
      return emit(state.copyWith(uploadStatus: ActionStatus.initial));
    } catch (e) {
      emit(state.copyWith(
        uploadStatus: ActionStatus.failure,
      ));
      return emit(state.copyWith(
        uploadStatus: ActionStatus.initial,
      ));
    }
  }
}
