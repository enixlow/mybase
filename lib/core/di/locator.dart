import 'package:get_it/get_it.dart';
import 'package:my_base/core/bloc/auth/auth_bloc.dart';
import 'package:my_base/core/model/config/app_config.dart';
import 'package:my_base/core/repository/auth/auth_repository.dart';
import 'package:my_base/core/repository/auth/i_auth_repository.dart';
import 'package:my_base/core/router/app_router.dart';

GetIt getIt = GetIt.instance;

Future<void> setupLocator(AppConfig config) async {
  await _registerRepository();

  await _registerAuthGuard();

  getIt.registerSingleton<AppRouter>(AppRouter());

  return;
}

Future _registerRepository() async {
  getIt.registerSingleton<IAuthRepository>(AuthRepository());
}

Future _registerAuthGuard() async {
  getIt.registerSingleton<AuthBloc>(
    AuthBloc(authRepo: getIt<IAuthRepository>()),
  );
}
