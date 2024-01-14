import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_base/core/const/enum.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.idle) AuthStatus status,
  }) = AuthStateInitial;
}
