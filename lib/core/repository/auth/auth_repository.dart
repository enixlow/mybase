import 'dart:async';

import 'package:my_base/core/const/enum.dart';
import 'package:my_base/core/repository/auth/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository();

  final _controller = StreamController<AuthStatus>();
  
  @override
  Stream<AuthStatus> get status async* {
    yield* _controller.stream;
  }

  @override
  Future<bool> login() async {
    return Future.delayed(const Duration(seconds: 5)).then((value) => true);
  }
}
