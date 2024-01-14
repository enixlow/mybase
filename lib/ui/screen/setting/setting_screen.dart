import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_bloc.dart';
import 'package:my_base/core/bloc/auth/auth_event.dart';

class SettingScreenPayload {
  final String setting;

  SettingScreenPayload(this.setting);
}

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({
    super.key,
    required this.payload,
  });

  final SettingScreenPayload payload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is my setting ${payload.setting}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<AuthBloc>().add(const AuthLogout()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
