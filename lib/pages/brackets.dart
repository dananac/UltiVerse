import 'package:flutter/material.dart';

class BracketsPage extends StatelessWidget {
  const BracketsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    //body: Center(child: Text('Brackets', style: TextStyle(fontSize: 72, color: Colors.red.shade400),)),
   body: ListView(
      children: <Widget>[
        Column(
          children: [
            Text('Round 1', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 16.0),
            // First Game
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('UNR', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('vs', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('UCSC', style: TextStyle(color: Colors.red[400]),),
                      ],
                    ),
                  ),
                ),
                // Second Game
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Chico State', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('vs', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('UCSB', style: TextStyle(color: Colors.red[400]),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Third Game
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('UNR', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('vs', style: TextStyle(color: Colors.red[400]),),
                        SizedBox(height: 8.0),
                        Text('UCSB', style: TextStyle(color: Colors.red[400]),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ],
          ),
       ]
    )
  )
}
