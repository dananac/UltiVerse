import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(child: Text('Home', style: TextStyle(fontSize: 72),)),
  );
}