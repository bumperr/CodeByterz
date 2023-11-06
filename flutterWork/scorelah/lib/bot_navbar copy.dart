// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scorelah/custom_icons_icons.dart';

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
      // bottomNavigationBar: NavigationBar(
      //   destinations:   [
      //     // NavigationDestination(icon: Icon(Custom_icons.nav_home), label: 'home'),
      //     // NavigationDestination(icon: Icon(Custom_icons.nav_mathq), label: 'home'),
      //     // NavigationDestination(icon: Icon(Custom_icons.nav_profile), label: 'home'),
      //     Container(
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.grey.withOpacity(0.5),
      //             spreadRadius: 5,
      //             blurRadius: 7,
      //             offset: Offset(0, 3), // changes position of shadow
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],

      // ),

      bottomNavigationBar: Container(
        height: 55,
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
          itemBuilder: ((context, index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Icon(listOfIcons[index],
                        color:
                            index == currentIndex ? Colors.black : Colors.grey),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              )),

          // backgroundColor: Colors.white,
          // body: SafeArea(
          //   child: Container(

          //   ),
          //   ),
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