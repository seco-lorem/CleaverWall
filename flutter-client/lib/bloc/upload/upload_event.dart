part of 'upload_bloc.dart';

@immutable
abstract class UploadEvent extends Equatable {
  const UploadEvent();
}

class UploadRequested extends UploadEvent {
  const UploadRequested(this.file);

  final File file;

  @override
  List<Object?> get props => [file];
}