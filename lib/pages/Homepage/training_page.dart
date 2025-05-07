import 'package:flutter/material.dart';
import 'package:sarana/pages/Homepage/training_page_2.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  final List<String> categories = [
    'Umum',
    'Aprentice',
    'Employee',
    'Senior',
    'Administrator',
  ];

  String selectedCategory = 'Umum';

  final List<Course> courses = [
    Course(
      title: "Mini AI Engineering for Business",
      imageUrl: "assets/training.png",
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
      imageUrl: "assets/training3.png",
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
      imageUrl: "assets/training2.png",
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
      imageUrl: "assets/training4.png",
      chapters: "8 Bab",
      lastUpdated: "2 Hari Yang Lalu",
      rating: 4.8,
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
      imageUrl: "assets/training3.png",
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Training",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((category) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: CategoryItem(
                        label: category,
                        isSelected: selectedCategory == category,
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Grid Card Materi
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 4,
              ),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return _buildCourseCard(courses[index]);
              },
            ),
          ],
        ),
      ),
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
        margin: EdgeInsets.only(left: 8.0),
        padding: EdgeInsets.all(8),
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
                        color: Colors.yellow[800],
                      ),
                      Text(
                        course.rating.toString(),
                        style: TextStyle(color: Colors.grey),
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

class CategoryItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade400,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
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
