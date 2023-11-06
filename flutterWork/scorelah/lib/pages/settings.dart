// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:scorelah/custom_icons_icons.dart';
import 'package:scorelah/pages/dashboard.dart';
import 'package:scorelah/pages/first_time.dart';
import 'package:scorelah/pages/profile.dart';
import 'package:scorelah/pages/settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon:Icon(Icons.arrow_back, color: Colors.black)),
                    
                    Text('Settings',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                    }, icon:SvgPicture.asset('assets/empty.svg'))
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
                    'Student',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20, top: 30, bottom: 25),
                        alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 251, 165, 1),
                  borderRadius: BorderRadius.all(Radius.circular(25)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                    child: TextButton(onPressed: () {
                      //add functionality later, to edit user information
                      
                    }, child:(
                      Text('Edit user information',
                      style: TextStyle(
                        color: Color.fromRGBO(24, 44, 212, 1),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 55.0),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
