import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontFamily: 'Custom');
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 2: Contacts',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello There!!',
          style: TextStyle(
            fontFamily: 'Custom',
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Custom Fonts Using Google font Lib!!',
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.amber,
              ),
            ),
            _widgetOptions.elementAt(_selectedIndex)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Typicons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesome.heart),
            label: 'Favorite',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Typicons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/contact-book.png',
              width: 24,
              height: 24,
            ),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 162, 0, 255),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
