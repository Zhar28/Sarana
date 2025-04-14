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
      "desc": "Membantu kehidupan\nprofesionalmu.",
    },
    {
      "image": "assets/intro_logo.png",
      "title": "Tingkatkan",
      "desc":
          "Hardskill dan Softskill kamu\ndengan modul-modul training\nkomperhensif & kece"
    },
    {
      "image": "assets/intro_logo.png",
      "title": "Mulai Sekarang",
      "desc": "Ayo mulai petualangan baru bersama kami."
    },
  ];

  int currentPage = 0;
  PageController _pageController = PageController();

  double get progress => (currentPage + 1) / introData.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

          // 🔵 Animated Dot
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              introData.length,
              (index) => buildAnimatedBorderDot(index),
            ),
          ),

          SizedBox(height: 30),

          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: progress),
            duration: Duration(milliseconds: 500),
            builder: (context, value, _) {
              Color buttonColor = value == 1.0
                  ? Colors.blue // Change to blue when animation is complete
                  : Colors.blue.shade50; // Default color during animation

              Color iconColor = value == 1.0
                  ? Colors
                      .white // Change icon color to white when animation is complete
                  : Colors.blue; // Default color during animation

              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CircularProgressIndicator(
                      value: value,
                      strokeWidth: 4,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
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
                      shape: CircleBorder(),
                      backgroundColor: buttonColor,
                      padding: EdgeInsets.all(15), // Increase padding here
                      elevation: 0,
                    ),
                    child:
                        Icon(Icons.arrow_forward, color: iconColor, size: 40),
                  ),
                ],
              );
            },
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildAnimatedBorderDot(int index) {
    bool isActive = index == currentPage;

    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      margin: EdgeInsets.symmetric(horizontal: 6),
      width: isActive ? 16 : 12,
      height: isActive ? 16 : 12,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.transparent,
        border: Border.all(
          color: isActive ? Colors.blue : Colors.grey,
          width: 2,
        ),
        shape: BoxShape.circle,
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
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, color: Colors.blue[600], fontFamily: 'Montserrat'),
        ),
      ],
    );
  }
}
