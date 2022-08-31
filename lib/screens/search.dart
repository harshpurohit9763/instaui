import 'package:flutter/material.dart';

import 'utils/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  color: Colors.grey[300],
                  child: Text('Search'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
