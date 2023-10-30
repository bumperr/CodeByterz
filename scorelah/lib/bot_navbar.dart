// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scorelah/custom_icons_icons.dart';
import 'package:scorelah/pages/fypmath.dart';
import 'package:scorelah/pages/home_page.dart';
import 'package:scorelah/pages/profile.dart';

class NavigationMenu extends StatefulWidget {
  @override
  NavigationMenuState createState() => NavigationMenuState();
}

class NavigationMenuState extends State<NavigationMenu> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          homePage(),
          FYPMathPage(),
          ProfilePage(),
        ],
      ),

      bottomNavigationBar: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemExtent: 120.0,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                  // _selectedPageIndex = currentIndex;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
                children: [ 
                    Center(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          top: size.width * .023,
                          bottom: size.width * .019,

                        ),
                        width: index == currentIndex ? size.height * .055 : 0,
                        //height: size.width * .128,
                        height: index == currentIndex ? size.width * .108 : 0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        listOfIcons[index],
                        color: index == currentIndex
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
              ),
              ),
              ),
        ),
      );
  }
}

List<IconData> listOfIcons = [
  Custom_icons.nav_home,
  Custom_icons.nav_mathq,
  Custom_icons.nav_profile,
];

// const List<Widget> bottomNavs = <Widget>[
//   Icon(Custom_icons.nav_home),
//   Icon(Custom_icons.nav_mathq),
//   Icon(Custom_icons.nav_profile),
// ];