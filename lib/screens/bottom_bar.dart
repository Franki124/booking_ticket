import 'package:booking_ticket/screens/profile_screen.dart';
import 'package:booking_ticket/screens/search_screen.dart';
import 'package:booking_ticket/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget>_widgetOptions = <Widget>[
  const HomeScreen(),
  const SearchScreen(),
  const TicketScreen(),
  const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined),
              activeIcon: Icon(Icons.airplane_ticket),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person_2),
              label: "Account"),
        ],

      ),
    );
  }
}
