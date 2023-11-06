import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorelah/pages/first_time.dart';
import 'package:scorelah/pages/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://ljbrblbxayjfleqlcdos.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxqYnJibGJ4YXlqZmxlcWxjZG9zIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg2ODkxOTAsImV4cCI6MjAxNDI2NTE5MH0.RKAqXYn1qhXu0yDiUwxpiLde9XaNEPGoIV_ArD1hJ_U',
    authFlowType: AuthFlowType.pkce,
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const FirstTime(),
    );
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }
}
