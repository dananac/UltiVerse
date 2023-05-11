import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Dana Conley', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('University of Nevada - Reno\ndanaconley@nevada.unr.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Jordan Rood', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('University of Nevada - Reno\njrood2024@nevada.unr.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Jenna Young', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('UC Santa Cruz\njyoung@ucsc.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Alexis Freeman', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('UC Santa Barbara\nalexisfree@ucsb.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Hannah James', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('Boise State university\nhannahj@bsu.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('McKenna Coleman', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('Chico State\nmccole@gmail.com'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Rachael Johnson', style: TextStyle(color: Colors.red[400]),),
            subtitle:
            Text('UC Santa Cruz\nrachaeljohnson@ucsc.edu'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    ),
  );
}
