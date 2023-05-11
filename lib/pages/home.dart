import 'package:flutter/material.dart';
import 'package:ultiverse/main.dart';
import 'package:ultiverse/pages/events.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //body: Center(child: Text('Home', style: TextStyle(fontSize: 72, color: Colors.red.shade400),)),
    //body: const ElevatedButtonExample()
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('What would you like to do?', 
            style: TextStyle(
              fontSize: 24, 
              fontWeight:FontWeight.w400,
              color: Colors.red[400]
            ),
          ),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Create a New Event'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>
                const EventsPage())
              );
            },
            child: const Text('Join an Event'),
          ),
        ],
      ),
    );
  }
} 