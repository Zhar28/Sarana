import 'package:flutter/material.dart';
import 'package:sarana/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<Map<String, String>> introData = [
    {
      "image": "assets/intro_logo.png",
      "title": "Sarana",
      "desc": "Membantu kehidupan\nprofesionalmu."
    },
    {
      "image": "assets/intro_logo.png",
      "title": "Tingkatkan",
      "desc": "Hardskill dan Softskill kamu\ndengan modul-modul training\nkomperhensif & kece"
    },
    {
      "image": "assets/intro_logo.png",
      "title": "Mulai Sekarang",
      "desc": "Ayo mulai petualangan baru bersama kami."
    },
  ];

  int currentPage = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: introData.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) => IntroContent(
                image: introData[index]["image"]!,
                title: introData[index]["title"]!,
                desc: introData[index]["desc"]!,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              introData.length,
              (index) => buildDot(index),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (currentPage == introData.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              } else {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
            ),
            child: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class IntroContent extends StatelessWidget {
  final String image, title, desc;
  const IntroContent({
    required this.image,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250),
        SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
          fontFamily: 'Montserrat'
          ),
        ),
      ],
    );
  }
}


