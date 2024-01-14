import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_base/core/di/locator.dart';
import 'package:my_base/core/router/app_router.dart';
import 'package:my_base/core/bloc/app/app_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_bloc.dart';
import 'package:my_base/core/di/locator.dart';
import 'package:my_base/core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  static final globalNavKey = GlobalKey<NavigatorState>();

  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with WidgetsBindingObserver {
  // final RouteObserver<PageRoute> _routeObserver = RouteObserver();
  final _appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => AppBloc()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        // builder: (ctx, child) {
        //   return BlocListener<AuthBloc, AuthState>(
        //     listener: (BuildContext context, AuthState state) {
        //       if (state.status == AuthStatus.authenticated) {
        //         ctx.router.push(const DashboardRoute());
        //       } else if (state.status == AuthStatus.unauthenticated) {
        //         ctx.router.push(const LoginRoute());
        //       }
        //     },
        //     child: child
        //   );
        // },
      ),
    );
  }
}
