import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(child: Text('People', style: TextStyle(fontSize: 72, color: Colors.red.shade400),)),
  );
}