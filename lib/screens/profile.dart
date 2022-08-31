import 'package:flutter/material.dart';
import 'package:ui/screens/utils/acc_tab_1.dart';
import 'package:ui/screens/utils/acc_tab_2.dart';
import 'package:ui/screens/utils/acc_tab_3.dart';
import 'package:ui/screens/utils/acc_tab_4.dart';
import 'package:ui/screens/utils/stories.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),

                //post followers and following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '23',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '789',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Following'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '987',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Followers'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Harsh',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'Flutter Developer',
                  ),
                ),
                Text(
                  'https://github.com/harshpurohit9763',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(child: Text('Edit Profile')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(child: Text('Ad Tools')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(child: Text('Insights')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          //stories row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                Stories(text: 'text'),
                Stories(text: 'text2'),
                Stories(text: 'text3'),
              ],
            ),
          ),
          const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_3x3_outlined),
            ),
            Tab(
              icon: Icon(
                Icons.video_call,
              ),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.person),
            )
          ]),

          Expanded(
            child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
