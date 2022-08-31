import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 40,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
