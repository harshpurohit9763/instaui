import 'package:flutter/material.dart';
import 'package:ui/screens/utils/posts.dart';
import 'package:ui/screens/utils/stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'harsh',
    'kalpita',
    'jadeja',
    'aniket',
    'ruchit',
    'niraj',
    'mehul'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ],
          )),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return Stories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return Posts(
                  user: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
