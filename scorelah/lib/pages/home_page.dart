//scorelahdb Scorelah699!

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

 class HomePage extends StatefulWidget {
   const HomePage({super.key});
 
   @override
   State<HomePage> createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
     // ignore: prefer_const_constructors
     return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
              // Hi user!
              Center(
                child: Text(
                  'Welcome, mogurina!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              )
              
          ],
        ),
      ),
     );
   }
 }