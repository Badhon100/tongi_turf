import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tongi_turf/features/bottom_nav_bar/view/bloc/bottom_nav_bar_bloc.dart';
import 'package:tongi_turf/features/bottom_nav_bar/view/widges/bottom_nav_bar.dart';
import 'package:tongi_turf/features/profile/view/pages/profile_page.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({super.key});

  static final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Bookings')),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavBarBloc(),
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xFFF2F2F7), // iOS background
        body: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            return _pages[state.currentIndex];
          },
        ),
        bottomNavigationBar: const GlassBottomNavBar(),
      ),
    );
  }
}
