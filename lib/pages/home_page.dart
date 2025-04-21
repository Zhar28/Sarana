import 'package:flutter/material.dart';
import 'package:sarana/Style/color.dart';
import 'package:sarana/pages/daily_checkin_page.dart';
import 'package:sarana/pages/leaderboard_page.dart';
import 'package:sarana/pages/reward_page.dart';
import 'package:sarana/pages/training_page.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Column(
          children: [
            Text("Homepages"),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TrainingPage()),
                );
              },
              child: const Text(
                "Training",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RewardPage()),
                );
              },
              child: const Text(
                "Reward",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
=======
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF34C1F0),
              Color(0xFFEEFBFF),
            ],
            stops: [
              0.0,
              0.3
            ]),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('google_24.png'),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Hi, Chesa 👋',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Logo SARANA
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 155,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5),
                    ],
                  ),
                  child: Center(
                    child: Image.asset("banner.png"),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildMenuItem(Icons.school, 'Training', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrainingPage()));
                    }),
                    _buildMenuItem(Icons.card_giftcard, 'Rewards', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RewardPage()));
                    }),
                    _buildMenuItem(Icons.emoji_events, 'Leaderboard', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LeaderboardPage()));
                    }),
                    _buildMenuItem(Icons.check_circle, 'Check-in', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DailyCheckinPage()));
                    }),
                  ],
                ),

                const SizedBox(height: 24),

                const Text(
                  'Recommendation',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                // Course Card list
                GridView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Biar gak konflik scroll-nya
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 16,
                    childAspectRatio: 3 / 4, // Rasio agar tidak terlalu tinggi
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return _buildCourseCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _buildMenuItem(IconData icon, String label, VoidCallback onTap) {
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
>>>>>>> 402a7e69d9e8fdc1e4a9473731d6d41bd3203681
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LeaderboardPage(),
                  ),
                );
              },
              child: const Text(
                "Leaderboard",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DailyCheckinPage(),
                  ),
                );
              },
              child: const Text(
                "DailyCheckin",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
<<<<<<< HEAD
=======
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildCourseCard() {
    return Container(
      width: 1500,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 8.0),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "logo_email.png",
            width: double.infinity,
            height: 60,
            fit: BoxFit.contain,
          ),
          Text(
            "Lorem Ipsum Heritage Of Alchemy",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '11 Bab',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      "1 Hari Yang Lalu",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      "5.0",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
>>>>>>> 402a7e69d9e8fdc1e4a9473731d6d41bd3203681
      ),
    );
  }
}
