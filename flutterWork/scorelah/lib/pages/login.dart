// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorelah/animated_textfield.dart';
import 'package:scorelah/bot_navbar.dart';
import 'package:scorelah/custom_animate_border.dart';
import 'package:scorelah/main.dart';
import 'package:scorelah/pages/ft_button.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:scorelah/pages/home_page.dart';
import 'package:scorelah/pages/profile.dart';
import 'package:scorelah/pages/register.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  void initState() {
    _setupAuthListener();
    super.initState();
  }

  void _setupAuthListener() {
    supabase.auth.onAuthStateChange.listen((data) {
      final event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const ProfilePage(),
          ),
        );
      }
    });
  }

  Future<AuthResponse> _googleSignIn() async {
    /// TODO: update the Web client ID with your own.
    ///
    /// Web Client ID that you registered with Google Cloud.
    const webClientId = 'my-web.apps.googleusercontent.com';

    /// TODO: update the iOS client ID with your own.
    ///
    /// iOS Client ID that you registered with Google Cloud.
    const iosClientId =
        '125667280217-21nn7h1890olnjl6hb7ce85jpgln2cvj.apps.googleusercontent.com';

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return supabase.auth.signInWithIdToken(
      provider: Provider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

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
                          )),
                        ),
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/google.svg'),
                        label: Text(
                          "Google",
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
                          prefix: SvgPicture.asset('assets/usernameicon.svg'),
                          isPassword: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AnimatedTextField(
                          label: "Password",
                          suffix: SvgPicture.asset('assets/Eye-slash.svg'),
                          prefix: SvgPicture.asset('assets/passwordicon.svg'),
                          isPassword: true,
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
                    onPressed: () => Get.to(() => NavigationMenu()),
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
                                          builder: (context) =>
                                              const registerPage()))),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
