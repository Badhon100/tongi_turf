import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tongi_turf/features/authentication/data_sources/auth_data_source.dart';

class AuthRepository {
  final AuthDataSource dataSource;

  AuthRepository(this.dataSource);

  /// Login and return session (JWT + refresh token)
  Future<Session> login(String email, String password) {
    return dataSource.loginUser(email, password);
  }

  /// Logout user
  Future<void> logout() {
    return dataSource.logout();
  }

  /// Current session (null if not logged in)
  Session? get currentSession => dataSource.currentSession;

  /// Check login state
  bool get isLoggedIn => dataSource.isLoggedIn;
}
