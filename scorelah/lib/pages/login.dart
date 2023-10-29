// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorelah/animated_textfield.dart';
import 'package:scorelah/custom_animate_border.dart';
import 'package:scorelah/pages/ft_button.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:scorelah/pages/register.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

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
                      'Sign up with',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(130, 60), 
                          backgroundColor: Color(0xFFFFFFFF),
                          elevation: 5,
                          shadowColor: Color.fromARGB(150, 0, 0, 0),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                            Radius.circular(15),
                            )
                          ),
                        ),
                        onPressed: (){}, 
                        icon: SvgPicture.asset('assets/google.svg'),
                        label: Text("Google",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFBDBDBD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        ),
      
                        SizedBox(
                          width: 20,
                        ),
      
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 60),
                            backgroundColor: Color(0xFF4368C7),
                            elevation: 5,
                            shadowColor: Color.fromARGB(150, 0, 0, 0),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                          ),
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/facebook.svg'),
                          label: Text(
                            "Facebook",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                        ),
                      ),
                    ],
                  ),
      
                  SizedBox(
                    height: 20,
                  ),
      
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AnimatedTextField(
                          label: "Username", 
                          suffix: null, 
                          prefix: SvgPicture.asset('assets/usernameicon.svg'),),
                        
                        SizedBox(
                          height: 20,
                        ),

                        AnimatedTextField(
                          label: "Password",
                          suffix: SvgPicture.asset('assets/Eye-slash.svg'),
                          prefix: SvgPicture.asset('assets/passwordicon.svg'),
                        )
                      ],
                    ),
                  ),

      
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 60), 
                      backgroundColor: Color(0xFF182CD4),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),)
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const loginPage()));
                    },
                    child: Text('Login'),
                  ),
      
                  SizedBox(
                    height: 10,
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text("Don't have an account yet?"),
                      // Text(" Register now."),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account yet?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFBDBDBD),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Register now!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF81C2FF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => const registerPage()))
                                  ),
                          ],
                        ),
                      ),
                    ],
                  )
      
                ],
              ),
            ),
          ),
      )
    );
  }
}
