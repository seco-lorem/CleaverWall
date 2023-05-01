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

class SignOutRequested extends AuthenticationEvent {
  const SignOutRequested();

  @override
  List<Object?> get props => [];
}