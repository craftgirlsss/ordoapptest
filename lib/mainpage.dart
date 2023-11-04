import 'package:flutter/material.dart';
import 'src/components/fontstyles/fontstyle.dart';
import 'src/views/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> widgetOptions = <Widget>[
    Home(),
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
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
      backgroundColor: Colors.white,
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 4, right: 4),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(139, 58, 117, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: const Color(0x008b3a75),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? Image.asset(
                          'assets/icons/home-inactivev2.png',
                          height: 23,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/home-inactive.png',
                          height: 23,
                          width: 23,
                        ),
                  label: 'Home'),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? Image.asset(
                        'assets/icons/notepad.png',
                        height: 23,
                        width: 23,
                      )
                    : Image.asset(
                        'assets/icons/notepad.png',
                        height: 23,
                        width: 23,
                      ),
                label: 'Lead',
              ),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? Image.asset(
                          'assets/icons/clock-active.png',
                          height: 23,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/clock-inactive.png',
                          height: 23,
                          width: 23,
                        ),
                  label: 'Commission'),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? Image.asset(
                          'assets/icons/person-active.png',
                          height: 23,
                          width: 23,
                        )
                      : Image.asset(
                          'assets/icons/person-inactive.png',
                          height: 23,
                          width: 23,
                        ),
                  label: 'Profile'),
            ],
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade300,
            selectedLabelStyle:
                poppinsRegular(color: Colors.white, fontSize: 13),
            unselectedLabelStyle:
                poppinsRegular(color: Colors.grey.shade200, fontSize: 13),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
