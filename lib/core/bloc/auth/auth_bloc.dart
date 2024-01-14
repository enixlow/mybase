import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_event.dart';
import 'package:my_base/core/bloc/auth/auth_state.dart';
import 'package:my_base/core/const/enum.dart';
import 'package:my_base/core/repository/auth/i_auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepo;
  late StreamSubscription<AuthStatus> _authSubscription;

  AuthStatus get status => state.status;

  AuthBloc({required IAuthRepository authRepo})
      : _authRepo = authRepo,
        super(const AuthState()) {
    on<AuthLogin>(_onAuthLogin);
    on<AuthCheck>(_onAuthCheck);
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<AuthLogout>(_onAuthLogout);
    _authSubscription = _authRepo.status.listen(
      (status) => add(AuthStatusChanged(status)),
    );
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }

  void _onAuthLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));

      final result = await _authRepo.login();
      if (result) {
        emit(state.copyWith(status: AuthStatus.authenticated));
      } else {
        emit(state.copyWith(status: AuthStatus.unauthenticated));
      }
    } catch (ex) {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    }
  }

  void _onAuthCheck(
    AuthCheck event,
    Emitter<AuthState> emit,
  ) async {
    try {
      bool prob = Random().nextDouble() <= 0.7;
      print("login result is $prob");
      if (prob) {
        emit(state.copyWith(status: AuthStatus.authenticated));
      } else {
        emit(state.copyWith(status: AuthStatus.unauthenticated));
      }
    } catch (ex) {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    }
  }

  void _onAuthStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthStatus.unauthenticated:
        emit(state.copyWith(status: AuthStatus.unauthenticated));
        break;
      case AuthStatus.authenticated:
        emit(state.copyWith(status: AuthStatus.authenticated));
        break;
      default:
        emit(state.copyWith(status: AuthStatus.idle));
        break;
    }
  }

  void _onAuthLogout(
    AuthLogout event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    } catch (ex) {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    }
  }
}
