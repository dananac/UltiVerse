import 'package:flutter/material.dart';
import 'package:ultiverse/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ulti-Verse',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'UltiVerse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    Center(child: Text('Events', style: TextStyle(fontSize: 72))),
    Center(child: Text('Brackets', style: TextStyle(fontSize: 72))),
    Center(child: Text('People', style: TextStyle(fontSize: 72))),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: screens[index],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          )
        ),
        child: NavigationBar(
          backgroundColor: Colors.blue.shade300,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) => 
            setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home), 
              label: 'Home'
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), 
              label: 'Events'
            ),
            NavigationDestination(
              icon: Icon(Icons.sports), 
              label: 'Brackets'
            ),
            NavigationDestination(
              icon: Icon(Icons.people), 
              label: 'People'
            ),
          ]
        ),
      ),
    );
  }
}
