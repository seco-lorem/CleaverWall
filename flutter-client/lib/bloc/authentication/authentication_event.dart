part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class SignInRequested extends AuthenticationEvent {
  const SignInRequested(this.username, this.password);

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];
}

class SignUpRequested extends AuthenticationEvent {
  const SignUpRequested(this.username, this.password, this.password2);

  final String username;
  final String password;
  final String password2;

  @override
  List<Object?> get props => [username, password, password2];
}

class SignOutRequested extends AuthenticationEvent {
  const SignOutRequested();

  @override
  List<Object?> get props => [];
}
