import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_base/core/const/enum.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppVersionCheck>(_onAppVersionCheck);
  }

  void _onAppVersionCheck(
    AppVersionCheck event,
    Emitter<AppState> emit,
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 5)).then(
        (value) => emit(state.copyWith(status: AppStatus.appVersionChecked)),
      );
    } catch (ex) {
      emit(state.copyWith(status: AppStatus.error));
    }
  }
}
