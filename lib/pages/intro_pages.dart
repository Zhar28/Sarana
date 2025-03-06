import 'package:flutter/material.dart';
import 'package:sarana/pages/login_page.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({super.key});

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ini intro page 1"),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroPage2()),
                );
              },
              child: const Text(
                "Lanjut",
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

// Contoh halaman tujuan
class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ini intro page 2"),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroPage3()),
                );
              },
              child: const Text(
                "Lanjut",
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

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ini intro page 3"),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                "Lanjut",
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
