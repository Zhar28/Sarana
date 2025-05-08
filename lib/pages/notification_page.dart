import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEFBFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFEEFBFF),
        title: Center(child: Text("Notification")),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 16, top: 52, right: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Today',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Just Now",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "6h",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "11h",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "23h",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '05 May 2025',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "11.23 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "01.08 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "07.05 AM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "05.05 AM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "12.04 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "11.06 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "07.31 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          'assets/chesa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Chesa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Liked Your ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Post',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "06.11 PM",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
