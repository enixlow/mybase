import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_base/app.dart';
import 'package:my_base/core/di/locator.dart';
import 'package:my_base/core/extension/bloc_observer.dart';
import 'package:my_base/core/model/config/app_config.dart';

void main() async {
  await setupAndRun();
}

Future<void> setupAndRun() async {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment("env", defaultValue: "staging");

  final appConfig = await _setupConfig(env);
  await setupLocator(appConfig);

  _run();
}

Future<AppConfig> _setupConfig(String env) async {
  final appConfigMap = await _loadJson('assets/json/app_config_$env.json');
  return AppConfig.fromJson(appConfigMap);
}

Future<Map<String, dynamic>> _loadJson(String path) async {
  try {
    return json.decode(await rootBundle.loadString(path));
  } catch (e) {
    // logger.e('Unable to load json config: $e');
    return {};
  }
}

void _run() {
  Bloc.observer = const AppBlocObserver();
  FlutterError.onError = (FlutterErrorDetails details) {
    // record error if need
  };
  runZonedGuarded(
    () async {
      runApp(const MyApp());
    },
    (error, stacktrace) {
      // record error if need
    },
  );
}
