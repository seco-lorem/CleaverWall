import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:webclient/data/models/action_status.dart';
import 'package:webclient/data/models/user_model.dart';
import 'package:webclient/data/repository/authentication_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authRepository;

  AuthenticationBloc({
    required AuthenticationRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthenticationState()) {
    on<SignInRequested>(_onSignInRequested);
    on<SignUpRequested>(_onSignUpRequested);
    on<SignOutRequested>(_onSignOutRequested);
  }

  FutureOr<void> _onSignInRequested(
      SignInRequested event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: ActionStatus.submitting));
    try {
      final response =
          await _authRepository.signIn(event.username, event.password);
      if (response) {
        return emit(state.copyWith(
            authStatus: AuthenticationStatus.authenticated,
            status: ActionStatus.success,
            user: UserModel(
              username: event.username,
              id: null,
            )));
      } else {
        emit(state.copyWith(
          status: ActionStatus.failure,
        ));
        return emit(state.copyWith(
          status: ActionStatus.initial,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        authStatus: AuthenticationStatus.unauthenticated,
        status: ActionStatus.failure,
        user: null,
      ));
      return emit(state.copyWith(
        status: ActionStatus.initial,
      ));
    }
  }

  FutureOr<void> _onSignUpRequested(
      SignUpRequested event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: ActionStatus.submitting));
    try {
      final response = await _authRepository.signUp(
          event.username, event.password, event.password2);
      if (response) {
        return emit(state.copyWith(
          status: ActionStatus.success,
        ));
      } else {
        emit(state.copyWith(
          status: ActionStatus.failure,
        ));
        return emit(state.copyWith(
          status: ActionStatus.initial,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: ActionStatus.failure,
      ));
      return emit(state.copyWith(
        status: ActionStatus.initial,
      ));
    }
  }

  FutureOr<void> _onSignOutRequested(
      SignOutRequested event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: ActionStatus.submitting));
    try {
      final response = await _authRepository.signOut();
      if (response) {
        emit(state.copyWith(
          authStatus: AuthenticationStatus.unauthenticated,
          status: ActionStatus.success,
          user: null,
        ));
      } else {
        return;
      }
    } catch (e) {
      emit(state.copyWith(
        authStatus: AuthenticationStatus.authenticated,
        status: ActionStatus.failure,
        user: null,
      ));
      debugPrint(e.toString());
    }
  }
}
