import 'package:supabase_flutter/supabase_flutter.dart';

class AuthDataSource {
  final supabase = Supabase.instance.client;

  Future<String> loginUser(String email, String password) async {
    try {
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      final user = response.user;
      if (user != null) {
        return user.id;
      } else {
        throw Exception('Login failed');
      }
    } on AuthException catch (e) {
      throw Exception('Authentication error: ${e.message}');
    } catch (e) {
      throw Exception('Error during login: $e');
    }
  }

  Future<String> logoutUser() async {
    try {
      await supabase.auth.signOut();
      return 'User logged out successfully';
    } catch (e) {
      throw Exception('Error during logout: $e');
    }
  }
}
