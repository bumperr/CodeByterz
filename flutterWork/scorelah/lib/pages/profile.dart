// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:scorelah/custom_icons_icons.dart';
import 'package:scorelah/pages/dashboard.dart';
import 'package:scorelah/pages/first_time.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 5.0
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 32.0),
                    Text('Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SvgPicture.asset('assets/settingsIcon.svg'),
                  ],
                ),
              SizedBox(height: 10.0),
              Image(
                image: AssetImage('assets/profilePic.png')
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Custom_icons.nav_home,
                    color: Colors.transparent,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'mogurina',
                    style: TextStyle(
                      color: Color(0xFF535358),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  SvgPicture.asset('assets/vipLogo.svg')
                ],
              ),
              
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '0 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Questions Answered',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                    
                  }, child:(
                    Text('Performance >',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,)
                    )),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                  top: 30,
                  bottom: 25,
                  ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFD9FBA5),
                  borderRadius: BorderRadius.all(Radius.circular(25)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 4.5),
                            SvgPicture.asset('assets/correctIcon.svg',
                            colorFilter:
                                  ColorFilter.mode(
                                  Color(0xFF182CD4), BlendMode.srcIn),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '0 ',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Correct',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '0% Correct Rate',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 5.0),
                  Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 5.0),
                            SvgPicture.asset(
                              'assets/crossIcon.svg',
                              colorFilter: ColorFilter.mode(
                                  Color(0xFF182CD4), BlendMode.srcIn),
                            ),
                            SizedBox(width: 13.0),
                            Text(
                              '0 ',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Wrong',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 4.5),
                            SvgPicture.asset(
                              'assets/fireIcon.svg',
                              colorFilter: ColorFilter.mode(
                                  Color(0xFF182CD4), BlendMode.srcIn),
                            ),
                            SizedBox(width: 13.0),
                            Text(
                              '0 ',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Longest Streak',
                              style: TextStyle(
                                color: Color(0xFF182CD4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'More >>',
                          style: TextStyle(
                            color: Color(0xFF182CD4),
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}