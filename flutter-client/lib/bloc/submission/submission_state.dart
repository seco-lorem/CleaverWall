part of 'submission_bloc.dart';

class SubmissionState extends Equatable {
  final ActionStatus uploadStatus;
  final ActionStatus listStatus;
  final File? file;
  final ResultModel? result;
  final List<SubmissionModel> submissionList;

  const SubmissionState({
    this.uploadStatus = ActionStatus.initial,
    this.listStatus = ActionStatus.initial,
    this.file,
    this.result,
    this.submissionList = const [],
  });

  SubmissionState copyWith({
    ActionStatus? uploadStatus,
    ActionStatus? listStatus,
    File? file,
    ResultModel? result,
    List<SubmissionModel>? submissionList,
  }) {
    return SubmissionState(
      uploadStatus: uploadStatus ?? this.uploadStatus,
      listStatus: listStatus ?? this.listStatus,
      file: file ?? this.file,
      result: result ?? this.result,
      submissionList: submissionList ?? this.submissionList,
    );
  }

  @override
  List<Object?> get props =>
      [uploadStatus, listStatus, file, result, submissionList];
}
