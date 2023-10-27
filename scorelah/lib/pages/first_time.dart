// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scorelah/pages/ft_button.dart';

class FirstTime extends StatefulWidget {
  const FirstTime({super.key});

  @override
  State<FirstTime> createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  height: 30,
                ),
              Image(
                height: 270,
                width: 270,
                image: AssetImage('assets/bg-login-01.png'),
              ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding:  EdgeInsets.all(15),
                child: Text(
                    'Score-Lah! is your all-in-one academic tool that helpsyou solve exam problems, track your weak points, and provide quality notes.', textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),

              SizedBox(
                  height: 30,
                ),
                
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () {}, 
                child: 
                Text('I want to be the very best!'),
              ),
            ],
          ),
        ),
      )
    );
  }
}