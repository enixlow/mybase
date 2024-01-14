part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    // language
    // theme?
    // version response
    @Default(AppStatus.initial) AppStatus status,
  }) = AppStateControl;
}
