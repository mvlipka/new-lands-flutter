import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        NavigationRail(
          selectedIndex: 0,
          groupAlignment: -1,
          onDestinationSelected: (int index) {
            setState(() {});
          },
          labelType: NavigationRailLabelType.all,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
                icon: Icon(Icons.home), label: Text('Home')),
            NavigationRailDestination(
                icon: Icon(Icons.create), label: Text('New Note')),
            NavigationRailDestination(
                icon: Icon(Icons.menu_book), label: Text('Campaigns')),
          ],
        ),
        VerticalDivider(
          thickness: 1,
          width: 1,
        ),
      ],
    );
  }
}
