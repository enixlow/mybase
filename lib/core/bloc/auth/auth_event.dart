import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_base/core/const/enum.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
    const factory AuthEvent.login() = AuthLogin;
    const factory AuthEvent.authCheck() = AuthCheck;
    const factory AuthEvent.authStatusChanged(AuthStatus status) = AuthStatusChanged;
    const factory AuthEvent.logout() = AuthLogout;
}
