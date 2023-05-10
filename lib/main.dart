import 'package:flutter/material.dart';
import 'package:ultiverse/pages/home.dart';
import 'package:ultiverse/pages/events.dart';
import 'package:ultiverse/pages/brackets.dart';
import 'package:ultiverse/pages/people.dart';

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
        // textTheme: TextTheme(headline1: TextStyle(color: Colors.red))
      ),
      home: const MyHomePage(title: 'UltiVerse'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySearchDelegate extends SearchDelegate{
  List<String> searchResults = [
      'Create Event',
      'Upcoming Events',
      'University of Nevada, Reno',
      'Participants',
      'Captains of UC Santa Cruz'
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    onPressed: () => close(context, null), //close searchbar 
    icon: const Icon(Icons.arrow_back)
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      onPressed: () {
        if (query.isEmpty) {
          close(context, null); //close search if already empty
        } else{
        query = '';
        }
      }, 
      icon: const Icon(Icons.clear)
    )
  ];

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query, 
      style: const TextStyle(fontSize: 64, fontWeight: FontWeight.w500),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
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
    EventsPage(),
    BracketsPage(),
    PeoplePage()
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: screens[index],
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context, 
                delegate: MySearchDelegate()
              );
            }, 
            icon: const Icon(Icons.search)
          )
        ],
      ),

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.red.shade400)
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
