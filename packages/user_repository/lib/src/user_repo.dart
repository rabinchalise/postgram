import 'package:firebase_auth/firebase_auth.dart';

import 'models/user.dart';

abstract class UserRepository {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser myUser);
  Future<void> signIn(String email, String password);
}
