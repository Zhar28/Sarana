import 'package:flutter/material.dart';
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
      backgroundColor: Colors.lightBlue.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile dan greeting
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // Ganti dengan image asli
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.layers, size: 40, color: Colors.blue),
                        const SizedBox(height: 8),
                        const Text(
                          'SARANA',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Menu Grid
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

                // Recommendation title
                const Text(
                  'Recommendation',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                // Course Card list
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return _buildCourseCard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Icon(icon, color: Colors.blue),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildCourseCard() {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://via.placeholder.com/150x80.png?text=Debug+Code',
            height: 80,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          const Text(
            'Sollicitudin enim lobortis pharetra i...',
            style: TextStyle(fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          const Text('11 Bab  • 1 hari yang lalu',
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 4),
          Row(
            children: const [
              Icon(Icons.star, size: 14, color: Colors.amber),
              SizedBox(width: 4),
              Text('4.3', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
