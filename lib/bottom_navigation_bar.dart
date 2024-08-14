import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/bottom_navbr/bottom_navbr_bloc.dart';
import 'package:job_finder/bloc/bottom_navbr/bottom_navbr_event.dart';
import 'package:job_finder/bloc/bottom_navbr/bottom_navbr_state.dart';
import 'package:job_finder/screens/chat/chat_screen.dart';
import 'package:job_finder/screens/home/home_screen.dart';
import 'package:job_finder/screens/jobs/job_screen.dart';
import 'package:job_finder/utils/colors.dart';

import 'screens/job_post/job_post_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> page = [
      const HomeScreen(),
      const JobsScreen(),
      const ChatSCreen(),
      Container(
        color: Colors.orange,
      )
    ];
    return BlocBuilder<BottomNavbrBloc, BottomNavbrState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const JobPostScreen())),
            elevation: 10,
            shape: const CircleBorder(),
            backgroundColor: kPrimaryColor,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: kAccentColor,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: kPrimaryColor,
              unselectedItemColor: kTertiaryColor,
              iconSize: 24,
              currentIndex: state.index,
              onTap: (index) {
                context
                    .read<BottomNavbrBloc>()
                    .add(BottomNavbrIndexChangeEvent(index: index));
              },
              items: const [
                BottomNavigationBarItem(
                    activeIcon: ImageIcon(AssetImage('assets/icons/home.png')),
                    icon:
                        ImageIcon(AssetImage('assets/icons/home_outline.png')),
                    label: ''),
                BottomNavigationBarItem(
                    activeIcon: ImageIcon(AssetImage('assets/icons/job.png')),
                    icon: ImageIcon(AssetImage('assets/icons/job_outline.png')),
                    label: ''),
                BottomNavigationBarItem(
                    activeIcon:
                        ImageIcon(AssetImage('assets/icons/message.png')),
                    icon: ImageIcon(
                        AssetImage('assets/icons/message_outline.png')),
                    label: ''),
                BottomNavigationBarItem(
                    activeIcon:
                        ImageIcon(AssetImage('assets/icons/profile.png')),
                    icon: ImageIcon(
                        AssetImage('assets/icons/profile_outline.png')),
                    label: ''),
              ]),
          body: page[state.index],
        );
      },
    );
  }
}
