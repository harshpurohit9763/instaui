import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 22,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.deepOrangeAccent,
          ),
        );
      },
    );
  }
}
