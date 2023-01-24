import 'package:firebase_auth/firebase_auth.dart' as FirebaseAuth show User;
import 'package:flutter/foundation.dart';

// This class is immutable, which means values in the class and all sub classes cant be changed
@immutable
class AuthUser {
  final bool isEmailVerified;
  const AuthUser(this.isEmailVerified);

  //Factory constructor, where we copy the firebase user into our own AuthUser class
  factory AuthUser.fromFirebase(FirebaseAuth.User user) => AuthUser(user.emailVerified);
}
