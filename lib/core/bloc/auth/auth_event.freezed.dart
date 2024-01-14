// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() authCheck,
    required TResult Function(AuthStatus status) authStatusChanged,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? authCheck,
    TResult? Function(AuthStatus status)? authStatusChanged,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? authCheck,
    TResult Function(AuthStatus status)? authStatusChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(AuthStatusChanged value) authStatusChanged,
    required TResult Function(AuthLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(AuthStatusChanged value)? authStatusChanged,
    TResult? Function(AuthLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(AuthStatusChanged value)? authStatusChanged,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthLoginImplCopyWith<$Res> {
  factory _$$AuthLoginImplCopyWith(
          _$AuthLoginImpl value, $Res Function(_$AuthLoginImpl) then) =
      __$$AuthLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoginImpl>
    implements _$$AuthLoginImplCopyWith<$Res> {
  __$$AuthLoginImplCopyWithImpl(
      _$AuthLoginImpl _value, $Res Function(_$AuthLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoginImpl implements AuthLogin {
  const _$AuthLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() authCheck,
    required TResult Function(AuthStatus status) authStatusChanged,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? authCheck,
    TResult? Function(AuthStatus status)? authStatusChanged,
    TResult? Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? authCheck,
    TResult Function(AuthStatus status)? authStatusChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(AuthStatusChanged value) authStatusChanged,
    required TResult Function(AuthLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(AuthStatusChanged value)? authStatusChanged,
    TResult? Function(AuthLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(AuthStatusChanged value)? authStatusChanged,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLogin implements AuthEvent {
  const factory AuthLogin() = _$AuthLoginImpl;
}

/// @nodoc
abstract class _$$AuthCheckImplCopyWith<$Res> {
  factory _$$AuthCheckImplCopyWith(
          _$AuthCheckImpl value, $Res Function(_$AuthCheckImpl) then) =
      __$$AuthCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckImpl>
    implements _$$AuthCheckImplCopyWith<$Res> {
  __$$AuthCheckImplCopyWithImpl(
      _$AuthCheckImpl _value, $Res Function(_$AuthCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckImpl implements AuthCheck {
  const _$AuthCheckImpl();

  @override
  String toString() {
    return 'AuthEvent.authCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() authCheck,
    required TResult Function(AuthStatus status) authStatusChanged,
    required TResult Function() logout,
  }) {
    return authCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? authCheck,
    TResult? Function(AuthStatus status)? authStatusChanged,
    TResult? Function()? logout,
  }) {
    return authCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? authCheck,
    TResult Function(AuthStatus status)? authStatusChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authCheck != null) {
      return authCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(AuthStatusChanged value) authStatusChanged,
    required TResult Function(AuthLogout value) logout,
  }) {
    return authCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(AuthStatusChanged value)? authStatusChanged,
    TResult? Function(AuthLogout value)? logout,
  }) {
    return authCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(AuthStatusChanged value)? authStatusChanged,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (authCheck != null) {
      return authCheck(this);
    }
    return orElse();
  }
}

abstract class AuthCheck implements AuthEvent {
  const factory AuthCheck() = _$AuthCheckImpl;
}

/// @nodoc
abstract class _$$AuthStatusChangedImplCopyWith<$Res> {
  factory _$$AuthStatusChangedImplCopyWith(_$AuthStatusChangedImpl value,
          $Res Function(_$AuthStatusChangedImpl) then) =
      __$$AuthStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class __$$AuthStatusChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthStatusChangedImpl>
    implements _$$AuthStatusChangedImplCopyWith<$Res> {
  __$$AuthStatusChangedImplCopyWithImpl(_$AuthStatusChangedImpl _value,
      $Res Function(_$AuthStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AuthStatusChangedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$AuthStatusChangedImpl implements AuthStatusChanged {
  const _$AuthStatusChangedImpl(this.status);

  @override
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthEvent.authStatusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusChangedImplCopyWith<_$AuthStatusChangedImpl> get copyWith =>
      __$$AuthStatusChangedImplCopyWithImpl<_$AuthStatusChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() authCheck,
    required TResult Function(AuthStatus status) authStatusChanged,
    required TResult Function() logout,
  }) {
    return authStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? authCheck,
    TResult? Function(AuthStatus status)? authStatusChanged,
    TResult? Function()? logout,
  }) {
    return authStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? authCheck,
    TResult Function(AuthStatus status)? authStatusChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(AuthStatusChanged value) authStatusChanged,
    required TResult Function(AuthLogout value) logout,
  }) {
    return authStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(AuthStatusChanged value)? authStatusChanged,
    TResult? Function(AuthLogout value)? logout,
  }) {
    return authStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(AuthStatusChanged value)? authStatusChanged,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(this);
    }
    return orElse();
  }
}

abstract class AuthStatusChanged implements AuthEvent {
  const factory AuthStatusChanged(final AuthStatus status) =
      _$AuthStatusChangedImpl;

  AuthStatus get status;
  @JsonKey(ignore: true)
  _$$AuthStatusChangedImplCopyWith<_$AuthStatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLogoutImplCopyWith<$Res> {
  factory _$$AuthLogoutImplCopyWith(
          _$AuthLogoutImpl value, $Res Function(_$AuthLogoutImpl) then) =
      __$$AuthLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogoutImpl>
    implements _$$AuthLogoutImplCopyWith<$Res> {
  __$$AuthLogoutImplCopyWithImpl(
      _$AuthLogoutImpl _value, $Res Function(_$AuthLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLogoutImpl implements AuthLogout {
  const _$AuthLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() authCheck,
    required TResult Function(AuthStatus status) authStatusChanged,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? authCheck,
    TResult? Function(AuthStatus status)? authStatusChanged,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? authCheck,
    TResult Function(AuthStatus status)? authStatusChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(AuthStatusChanged value) authStatusChanged,
    required TResult Function(AuthLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(AuthStatusChanged value)? authStatusChanged,
    TResult? Function(AuthLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(AuthStatusChanged value)? authStatusChanged,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthEvent {
  const factory AuthLogout() = _$AuthLogoutImpl;
}
