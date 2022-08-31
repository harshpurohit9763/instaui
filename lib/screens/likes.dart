import 'package:flutter/material.dart';

import 'utils/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

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
              'Shop',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Row(
              children: const [
                Icon(Icons.calendar_today),
                Icon(Icons.menu),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(4),
                color: Colors.grey[300],
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Text('Search'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.3,
            child: const ShopGrid(),
          )
        ],
      ),
    );
  }
}
