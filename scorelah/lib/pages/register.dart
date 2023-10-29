// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorelah/animated_textfield.dart';
import 'package:scorelah/pages/home_page.dart';
import 'package:scorelah/pages/login.dart';

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Image(
                    height: 140,
                    width: 140,
                    image: AssetImage('assets/bg-login-01.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Register new account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        // Username
                        AnimatedTextField(  
                          label: "Username",
                          suffix: null,
                          prefix: SvgPicture.asset('assets/usernameicon.svg'),
                          isPassword: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Password
                        AnimatedTextField(
                          label: "Password",
                          suffix: SvgPicture.asset('assets/Eye-slash.svg'),
                          prefix: SvgPicture.asset('assets/passwordicon.svg'),
                          isPassword: true
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Email
                        AnimatedTextField(
                          label: "Email",
                          suffix: null,
                          prefix: SvgPicture.asset('assets/emailIcon.svg'),
                          isPassword: false,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 60),
                      backgroundColor: Color(0xFF182CD4),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const homePage()));
                    },
                    child: Text('Sign up'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        )
      );
  }
}