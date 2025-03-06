import 'package:flutter/material.dart';
import 'package:sarana/pages/forgot_password_page.dart';
import 'package:sarana/pages/home_pages.dart';
import 'package:sarana/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("loginpage"),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePages()),
                );
              },
              child: const Text(
                "login",
                style: TextStyle(
                  color: Colors.blue, 
                  fontSize: 18, 
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.blue, 
                  fontSize: 18, 
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
                );
              },
              child: const Text(
                "forgot password",
                style: TextStyle(
                  color: Colors.blue, 
                  fontSize: 18, 
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
