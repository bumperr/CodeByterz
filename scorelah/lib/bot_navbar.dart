// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scorelah/custom_icons_icons.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations:  const [
          NavigationDestination(icon: Icon(Custom_icons.nav_home), label: 'home'),
          NavigationDestination(icon: Icon(Custom_icons.nav_mathq), label: 'home'),
          NavigationDestination(icon: Icon(Custom_icons.nav_profile), label: 'home'),
        ],

      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(


        ),
        ),
    );
  }
}