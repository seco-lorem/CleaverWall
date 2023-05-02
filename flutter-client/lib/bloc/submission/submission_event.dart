part of 'submission_bloc.dart';

@immutable
abstract class SubmissionEvent extends Equatable {
  const SubmissionEvent();
}

class FileSelected extends SubmissionEvent {
  const FileSelected(this.file);

  final File file;

  @override
  List<Object?> get props => [file];
}

class UploadRequested extends SubmissionEvent {
  const UploadRequested();

  @override
  List<Object?> get props => [];
}

class SubmissionListRequested extends SubmissionEvent{
  final bool authorized;
  const SubmissionListRequested(this.authorized);

  @override
  List<Object?> get props => [authorized];
}