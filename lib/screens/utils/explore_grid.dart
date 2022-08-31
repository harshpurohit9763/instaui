import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 21,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.grey[300],
          ),
        );
      },
    );
  }
}
