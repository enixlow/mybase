import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_base/core/bloc/app/app_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_event.dart';
import 'package:my_base/core/const/assets.dart';
import 'package:my_base/core/const/enum.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AppBloc>().add(const AppVersionCheck());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MultiBlocListener(
          listeners: [
            BlocListener<AppBloc, AppState>(
                listener: (BuildContext context, AppState state) {
              if (state.status == AppStatus.appVersionChecked) {
                // 1. if require force update
                // else if optional update
                // 2. check for jwt
                context.read<AuthBloc>().add(const AuthCheck());
              }
            }),
          ],
          child: const Image(
            image: AssetImage(AssetImages.kAppLogo),
          ),
        ),
      ),
    );
  }
}
