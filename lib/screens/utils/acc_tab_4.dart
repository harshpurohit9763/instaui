import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({Key? key}) : super(key: key);

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
            color: Colors.deepPurpleAccent,
          ),
        );
      },
    );
  }
}
