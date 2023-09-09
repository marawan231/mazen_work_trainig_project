// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazen_project/constants.dart';

class CustomButtonNavBar extends StatefulWidget {
  const CustomButtonNavBar({super.key, required this.onTap});
  final void Function(int index) onTap;

  @override
  State<CustomButtonNavBar> createState() => _CustomButtonNavBarState();
}

class _CustomButtonNavBarState extends State<CustomButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xff4B194F),
        onTap: widget.onTap,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navBarImages[0],
              width: 20,
              color: selectedIndex == 0
                  ? const Color(0xff4B194F)
                  : const Color(0xff626262),
            ),
            label: navBarTitles[0],
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navBarImages[1],
              width: 20,
              color: selectedIndex == 1
                  ? const Color(0xff4B194F)
                  : const Color(0xff626262),
            ),
            label: navBarTitles[1],
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navBarImages[2],
              width: 20,
              color: selectedIndex == 2
                  ? const Color(0xff4B194F)
                  : const Color(0xff626262),
            ),
            label: navBarTitles[2],
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navBarImages[3],
              width: 20,
              color: selectedIndex == 3
                  ? const Color(0xff4B194F)
                  : const Color(0xff626262),
            ),
            label: navBarTitles[3],
          ),
        ]);
  }
}
