import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String user;

  Posts({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    user,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: const [
              Text('Liked by'),
              SizedBox(
                width: 5,
              ),
              Text(
                'harsh',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text('and'),
              SizedBox(
                width: 5,
              ),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'kalpita  ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          'Lost soul in the wonders of 12 years and more to be found')
                ]),
          ),
        )
      ],
    );
  }
}
