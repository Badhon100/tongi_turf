import 'package:supabase_flutter/supabase_flutter.dart';

class AuthDataSource {
  final _supabase = Supabase.instance.client;

  Future<Session> loginUser(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    final session = response.session;
    if (session == null) {
      throw AuthException('Login failed');
    }

    return session; // contains accessToken + refreshToken
  }

  Future<void> logout() async {
    await _supabase.auth.signOut();
  }

  Session? get currentSession => _supabase.auth.currentSession;

  bool get isLoggedIn => currentSession != null;
}
