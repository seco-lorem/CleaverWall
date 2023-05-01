import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/data/models/submission_model.dart';
import 'package:webclient/data/repository/submission_repository.dart';

part 'submission_event.dart';

part 'submission_state.dart';

class SubmissionBloc extends Bloc<SubmissionEvent, SubmissionState> {
  final SubmissionRepository _submissionRepository;

  SubmissionBloc({
    required SubmissionRepository submissionRepository,
  })  : _submissionRepository = submissionRepository,
        super(const SubmissionState()) {
    on<SubmissionListRequested>(_onSubmissionListRequested);
    // on<UploadRequested>(_onUploadRequested);
  }

  FutureOr<void> _onSubmissionListRequested(
      SubmissionListRequested event, Emitter<SubmissionState> emit) async {
    if(!event.authorized || state.status == ActionStatus.submitting) {
      return;
    }
    emit(state.copyWith(status: ActionStatus.submitting));
    try {
      final response =
      await _submissionRepository.getSubmissionList();
      emit(state.copyWith(status: ActionStatus.success, submissionList: response));
      return emit(state.copyWith(status: ActionStatus.initial));
    } catch (e) {
      emit(state.copyWith(
        status: ActionStatus.failure,
      ));
      return emit(state.copyWith(
        status: ActionStatus.initial,
      ));
    }
  }
}
