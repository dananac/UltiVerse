import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    //body: Center(child: Text('Events', style: TextStyle(fontSize: 72, color: Colors.red.shade400),)),
      body: ListView(
      children: <Widget>[
        //Card(child: ListTile(title: Text('One-line ListTile'))),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Stanford Invite', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Stevinsion, CA | March 15th-16th, 2024\n5 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Davis Ultimate Invitational', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Davis, CA | October 18th-19th, 2024\n8 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('NorCal DI Sectionals', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Santa Cruz, CA | November 25th-26th, 2024\n10 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('NorCal DI Regionals', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Santa Barbara, CA | April 15th-16th, 2024\n16 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Boise BigSky Brawl', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Boise, ID | June 3rd-4th, 2024\n12 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Chico State Invite', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Chico, CA | March 15th-16th, 2024\n5 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('BNP Paribas Open', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Indian Wells, CA | March 15th-16th, 2024\n10 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('The Wimbledon', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('London, England | March 15th-16th, 2024\n3 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Austin Rodeo Rumble Invite', style: TextStyle(color: Colors.red[400]),),
            subtitle:
                Text('Austin, TX | July 12th-17th, 2024\n20 teams registered'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    ),
  );
}