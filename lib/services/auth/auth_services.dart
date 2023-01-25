import 'package:single_clock_proj/services/auth/auth_provider.dart';
import 'package:single_clock_proj/services/auth/auth_user.dart';
import 'package:single_clock_proj/services/auth/firebase_auth_provider.dart';

//Services have more logic than providers.
//A service could take input from multiple providers, fuze data together and send to UI
class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());

  @override
  Future<void> initialize() => provider.initialize();

  @override
  Future<AuthUser> createUser({required String email, required String password}) => provider.createUser(email: email, password: password);

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn({required String email, required String password}) => provider.logIn(email: email, password: password);

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();
}
