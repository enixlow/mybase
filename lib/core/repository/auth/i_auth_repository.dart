import 'package:my_base/core/const/enum.dart';

abstract class IAuthRepository {
  
  Stream<AuthStatus> get status;
  
  Future<bool> login();
}