import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordoapp/mainpage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  HttpOverrides.global = CertificateNetwork();
  await Supabase.initialize(
    url: 'https://cgwedpervqbywpyjftzu.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNnd2VkcGVydnFieXdweWpmdHp1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYyNTgwMTYsImV4cCI6MjAyMTgzNDAxNn0.NmjnWZg_tq728Zuz4Wlnrrd8oBA4PlflIyYAQ6MrExw',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ordo App Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class CertificateNetwork extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
