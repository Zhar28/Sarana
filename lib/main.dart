import 'package:flutter/material.dart';
import 'package:sarana/pages/home_page.dart';
import 'package:sarana/pages/intro_page.dart';
import 'package:sarana/widget/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

Future<void> _checkLoginStatus() async {
  final prefs = await SharedPreferences.getInstance();

  print("📦 Semua data SharedPreferences: ${prefs.getKeys()}");
  for (String key in prefs.getKeys()) {
    print("🗂 $key : ${prefs.get(key)}");
  }

  final token = prefs.getString('token');
  print("🔍 Token yang ditemukan di SplashScreen: $token");

  await Future.delayed(const Duration(seconds: 1));

  if (token != null && token.isNotEmpty) {
    print("✅ Token valid, langsung ke Navbar.");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Navbar()),
    );
  } else {
    print("🛑 Token kosong, ke IntroPage.");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => IntroPage()),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}