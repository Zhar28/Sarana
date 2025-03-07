import 'package:flutter/material.dart';

class HistoryReedem extends StatefulWidget {
  const HistoryReedem({super.key});

  @override
  State<HistoryReedem> createState() => _HistoryReedemState();
}

class _HistoryReedemState extends State<HistoryReedem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("History Reedem"),
          ],
        ),
      ),
    );
  }
}
