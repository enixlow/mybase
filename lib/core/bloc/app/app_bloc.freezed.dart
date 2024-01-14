// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppVersionCheck value) checkAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppVersionCheck value)? checkAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppVersionCheck value)? checkAppVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppVersionCheckImplCopyWith<$Res> {
  factory _$$AppVersionCheckImplCopyWith(_$AppVersionCheckImpl value,
          $Res Function(_$AppVersionCheckImpl) then) =
      __$$AppVersionCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppVersionCheckImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppVersionCheckImpl>
    implements _$$AppVersionCheckImplCopyWith<$Res> {
  __$$AppVersionCheckImplCopyWithImpl(
      _$AppVersionCheckImpl _value, $Res Function(_$AppVersionCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppVersionCheckImpl implements AppVersionCheck {
  const _$AppVersionCheckImpl();

  @override
  String toString() {
    return 'AppEvent.checkAppVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppVersionCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAppVersion,
  }) {
    return checkAppVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAppVersion,
  }) {
    return checkAppVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAppVersion,
    required TResult orElse(),
  }) {
    if (checkAppVersion != null) {
      return checkAppVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppVersionCheck value) checkAppVersion,
  }) {
    return checkAppVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppVersionCheck value)? checkAppVersion,
  }) {
    return checkAppVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppVersionCheck value)? checkAppVersion,
    required TResult orElse(),
  }) {
    if (checkAppVersion != null) {
      return checkAppVersion(this);
    }
    return orElse();
  }
}

abstract class AppVersionCheck implements AppEvent {
  const factory AppVersionCheck() = _$AppVersionCheckImpl;
}

/// @nodoc
mixin _$AppState {
// language
// theme?
// version response
  AppStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AppStatus status});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateControlImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateControlImplCopyWith(_$AppStateControlImpl value,
          $Res Function(_$AppStateControlImpl) then) =
      __$$AppStateControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStatus status});
}

/// @nodoc
class __$$AppStateControlImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateControlImpl>
    implements _$$AppStateControlImplCopyWith<$Res> {
  __$$AppStateControlImplCopyWithImpl(
      _$AppStateControlImpl _value, $Res Function(_$AppStateControlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AppStateControlImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$AppStateControlImpl implements AppStateControl {
  const _$AppStateControlImpl({this.status = AppStatus.initial});

// language
// theme?
// version response
  @override
  @JsonKey()
  final AppStatus status;

  @override
  String toString() {
    return 'AppState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateControlImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateControlImplCopyWith<_$AppStateControlImpl> get copyWith =>
      __$$AppStateControlImplCopyWithImpl<_$AppStateControlImpl>(
          this, _$identity);
}

abstract class AppStateControl implements AppState {
  const factory AppStateControl({final AppStatus status}) =
      _$AppStateControlImpl;

  @override // language
// theme?
// version response
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AppStateControlImplCopyWith<_$AppStateControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
