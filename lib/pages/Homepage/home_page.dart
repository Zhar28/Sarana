import 'package:flutter/material.dart';
import 'package:sarana/pages/Homepage/daily_checkin_page.dart';
import 'package:sarana/pages/Homepage/leaderboard_page.dart';
import 'package:sarana/pages/Homepage/rewards_page.dart';
import 'package:sarana/pages/Homepage/training/training_page.dart';
import 'package:sarana/pages/Homepage/training/training_page_2.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final List<String> bannerImages = [
    'assets/banner.png',
  ];

  final List<Course> courses = [
    Course(
      title: "Mini AI Engineering for Business",
      imageUrl: "assets/training1.png",
      chapters: "11 Bab",
      lastUpdated: "1 Hari Yang Lalu",
      rating: 5.0,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training2.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training1.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training4.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training1.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training3.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training1.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training4.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
    Course(
      title: "Flutter for Beginners",
      imageUrl: "assets/training3.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFEEFBFF),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(
                        'assets/chesa.png',
                      ),
                    ),
                    const SizedBox(width: 12),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                        children: const [
                          TextSpan(
                            text: 'Hi, ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Chesa',
                            style: TextStyle(
                              color: Color(0xFF34C1F0),
                            ),
                          ),
                          TextSpan(
                            text: ' 👋',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Logo SARANA
                Column(
                  children: bannerImages.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 8),
                                blurRadius: 10,
                                spreadRadius: -4,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              imagePath,
                              width: 350,
                              height: 155,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildMenuItem(
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/buku.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      'Training',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrainingPage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/gift.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      'Rewards',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RewardsScreen()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/trophy.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      'Leaderboard',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LeaderboardPage()),
                        );
                      },
                    ),
                    _buildMenuItem(
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/coin.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      'Check-in',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DailyCheckInScreen()));
                    }),
                  ],
                ),

                const SizedBox(height: 24),

                const Text(
                  'Recommendation',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 12),

                // Course Card list
                GridView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // Prevent scroll conflict
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 16,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: courses
                      .length, // Use courses.length instead of hardcoding
                  itemBuilder: (context, index) {
                    return _buildCourseCard(courses[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _buildMenuItem(Widget icon, String label, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: icon,
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildCourseCard(Course course) {
    return GestureDetector(
      child: Container(
        width: 1500,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 8.0),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              course.imageUrl,
              fit: BoxFit.fill,
            ),
            Text(
              course.title,
              style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        course.chapters,
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                      Text(
                        course.lastUpdated,
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFBC922),
                      ),
                      Text(
                        course.rating.toString(),
                        style: TextStyle(
                            color: Color(0xFFFBC922), fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TrainingPage2()),
        );
      },
    );
  }
}

class Course {
  final String title;
  final String imageUrl;
  final String chapters;
  final String lastUpdated;
  final double rating;

  Course({
    required this.title,
    required this.imageUrl,
    required this.chapters,
    required this.lastUpdated,
    required this.rating,
  });
}
