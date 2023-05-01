part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
  uninitialized,
}

@immutable
class AuthenticationState extends Equatable {
  final AuthenticationStatus authStatus;
  final ActionStatus status;
  final UserModel? user;

  const AuthenticationState(
      {this.authStatus = AuthenticationStatus.unauthenticated,
      this.status = ActionStatus.initial,
      this.user});

  AuthenticationState copyWith({
    AuthenticationStatus? authStatus,
    ActionStatus? status,
    UserModel? user,
  }) {
    return AuthenticationState(
      authStatus: authStatus ?? this.authStatus,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [authStatus, status, user];

  @override
  toString() {
    return 'AuthenticationStatus: $authStatus, '
        'ActionStatus: $status, '
        'username: ${user?.username ?? "NO NAME"}, '
        'user id: ${user?.id ?? -1}, ';
  }
}
