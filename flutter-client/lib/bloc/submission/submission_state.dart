part of 'submission_bloc.dart';

class SubmissionState extends Equatable {
  final ActionStatus uploadStatus;
  final ActionStatus listStatus;
  final ActionStatus individualStatus;
  final File? file;
  final ResultModel? result;
  final SubmissionModel? individualResult;
  final List<SubmissionModel> submissionList;
  final int? selectedSubmission;

  const SubmissionState({
    this.uploadStatus = ActionStatus.initial,
    this.listStatus = ActionStatus.initial,
    this.individualStatus = ActionStatus.initial,
    this.file,
    this.result,
    this.individualResult,
    this.submissionList = const [],
    this.selectedSubmission,
  });

  SubmissionState copyWith({
    ActionStatus? uploadStatus,
    ActionStatus? listStatus,
    ActionStatus? individualStatus,
    File? file,
    ResultModel? result,
    SubmissionModel? individualResult,
    List<SubmissionModel>? submissionList,
    int? selectedSubmission,
  }) {
    return SubmissionState(
      uploadStatus: uploadStatus ?? this.uploadStatus,
      listStatus: listStatus ?? this.listStatus,
      individualStatus: individualStatus ?? this.individualStatus,
      file: file ?? this.file,
      result: result ?? this.result,
      individualResult: individualResult ?? this.individualResult,
      submissionList: submissionList ?? this.submissionList,
      selectedSubmission: selectedSubmission ?? this.selectedSubmission,
    );
  }

  @override
  List<Object?> get props =>
      [uploadStatus, listStatus, individualStatus, file, result, individualResult, submissionList, selectedSubmission];
}
