import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'NewsPage.dart';
import 'NotificationPage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int _angkaNavbar = 0;

    final List<Widget> _pages = [
        MainPage(),
        NewsPage(),
        AnnouncementPage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_angkaNavbar],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _angkaNavbar,
        type: BottomNavigationBarType.fixed,
        onTap: (halaman) {
          setState(() {
            _angkaNavbar = halaman;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/home.png')),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/news.png')),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/notif.png')),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}