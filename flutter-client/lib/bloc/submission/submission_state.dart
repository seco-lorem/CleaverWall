part of 'submission_bloc.dart';


class SubmissionState extends Equatable{
  final ActionStatus status;
  final File? file;
  final List<SubmissionModel> submissionList;

const SubmissionState({
    this.status = ActionStatus.initial,
    this.file,
    this.submissionList = const [],
  });

  SubmissionState copyWith({
    ActionStatus? status,
    File? file,
    List<SubmissionModel>? submissionList,
  }) {
    return SubmissionState(
      status: status ?? this.status,
      file: file ?? this.file,
      submissionList: submissionList ?? this.submissionList,
    );
  }
  @override
  List<Object?> get props => [status, file, submissionList];
}

