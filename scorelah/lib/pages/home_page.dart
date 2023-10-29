//scorelahdb Scorelah699!

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Hi user!
            Center(
              child: Text(
                'Welcome, mogurina!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 330,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                ),
                Container(
                  height: 241,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/homepagepic.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  child: Text(
                    'Question of the day',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF696969),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),

            Stack(
              children: [
                Container(
                  height: 75,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Positioned(
                  left: 55,
                  top: 25,
                  child: Text(
                    'See your saved questions',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF696969),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 30,
                  child: SvgPicture.asset(
                    'assets/bookmark.svg',
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 26,
                  child: SvgPicture.asset(
                    'assets/doublenext.svg',
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 82,
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  SvgPicture.asset('assets/crosshair.svg'),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tackle your weak point',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF696969),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Chapter 2: Function',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF696969),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset('assets/doublenext.svg')
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  SvgPicture.asset('assets/bookmark.svg'),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'See your saved questions',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF696969),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset('assets/doublenext.svg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
