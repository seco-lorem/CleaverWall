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
  final bool dataUsePermission;
  final int mode;
  const UploadRequested(this.dataUsePermission, this.mode);

  @override
  List<Object?> get props => [dataUsePermission, mode];
}

class SubmissionListRequested extends SubmissionEvent{
  final bool authorized;
  const SubmissionListRequested(this.authorized);

  @override
  List<Object?> get props => [authorized];
}

class IndividualSubmissionRequested extends SubmissionEvent{
  final bool authorized;
  final int id;
  const IndividualSubmissionRequested(this.authorized, this.id);

  @override
  List<Object?> get props => [authorized, id];
}

class LogoutRequested extends SubmissionEvent{
  const LogoutRequested();

  @override
  List<Object?> get props => [];
}

class SetSelectedItem extends SubmissionEvent{
  final int id;
  const SetSelectedItem(this.id);

  @override
  List<Object?> get props => [id];
}