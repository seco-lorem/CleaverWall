part of 'upload_bloc.dart';


class UploadState extends Equatable{
  final ActionStatus status;
  final File? file;

const UploadState({
    this.status = ActionStatus.initial,
    this.file,
  });

  UploadState copyWith({
    ActionStatus? status,
    File? file,
  }) {
    return UploadState(
      status: status ?? this.status,
      file: file ?? this.file,
    );
  }
  @override
  List<Object?> get props => [status, file];
}

