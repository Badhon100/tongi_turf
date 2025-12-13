import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tongi_turf/features/authentication/view/pages/login_page.dart';
import 'package:tongi_turf/features/bottom_nav_bar/view/pages/bottom_nav_bar_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        final session = Supabase.instance.client.auth.currentSession;

        if (session != null) {
          // ✅ Token exists & valid
          return const BottomNavBarPage();
        }

        // ❌ No session → login
        return LoginPage();
      },
    );
  }
}
