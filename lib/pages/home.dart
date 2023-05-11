import 'package:flutter/material.dart';
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
          const Card(
              child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Text('Event Planning', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),),
            ),
          ),
          Image.asset('assets/images/ultimate_pic.jpg', height: 280,),
          Card(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('What would you like to do?', 
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight:FontWeight.w400,
                  color: Colors.red[400]
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text('Event Planning - Step 1', style: TextStyle(color: Colors.red[400]),),
                    ),
                    body: Center(
                      child: Text('This will be our step 1 screen to create a new event!', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),)
                    )
                  );
                })
              );
          },
          child: const Text('Create a New Event'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text('Events', style: TextStyle(color: Colors.red[400]),),
                    ),
                    body: EventsPage()
                  );
                })
              );
            },
            child: const Text('Join an Event'),
          ),
        ],
      ),
    );
  }
} 