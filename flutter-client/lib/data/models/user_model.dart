import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String? username;
  final int? id;

  const UserModel({required this.username, required this.id});

  @override
  List<Object?> get props => [username, id];
}
