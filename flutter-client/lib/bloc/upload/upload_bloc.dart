import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/data/repository/submission_repository.dart';

part 'upload_event.dart';

part 'upload_state.dart';

class UploadBloc extends Bloc<UploadEvent, UploadState> {
  final SubmissionRepository _submissionRepository;
  UploadBloc({
    required SubmissionRepository submissionRepository,
  })  : _submissionRepository = submissionRepository,
        super(const UploadState()) {
  }
}
