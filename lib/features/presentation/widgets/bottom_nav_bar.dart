import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_f/core/svg_icons_constans.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
     int _currentIndex = 0;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromRGBO(45, 46, 46, 1),
             
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.yellow,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                
                BottomNavigationBarItem(
                  icon: SvgPicture.string(appIconSvg),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.string(Qucon_icon),
                  label: 'Qucon',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.string(Zaddy_icon),
                  label: 'Zaddy',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.string(organize_icon),
                  label: 'Organize',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.string(Profile_icon),
                  label: 'Profile',
                ),
              ],
            );
  }
}