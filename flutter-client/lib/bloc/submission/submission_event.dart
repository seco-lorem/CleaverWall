part of 'submission_bloc.dart';

@immutable
abstract class SubmissionEvent extends Equatable {
  const SubmissionEvent();
}

class UploadRequested extends SubmissionEvent {
  const UploadRequested(this.file);

  final File file;

  @override
  List<Object?> get props => [file];
}

class SubmissionListRequested extends SubmissionEvent{
  final bool authorized;
  const SubmissionListRequested(this.authorized);

  @override
  List<Object?> get props => [authorized];
}