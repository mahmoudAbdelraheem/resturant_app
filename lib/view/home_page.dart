import 'package:flutter/material.dart';
import 'package:food/componats/body_items.dart';
import 'package:food/componats/custom_chip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 25, top: 45, right: 25),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      // radius: 25,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      CustomChip(lable: 'healthy', isActive: true),
                      CustomChip(lable: 'medile east', isActive: false),
                      CustomChip(lable: 'italian', isActive: false),
                      CustomChip(lable: 'mexican', isActive: false),
                      CustomChip(lable: 'asian', isActive: false),
                      CustomChip(lable: 'chinese', isActive: false),
                      CustomChip(lable: 'indian', isActive: false),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const <Widget>[
                BodyItems(
                  title: "Joe's Linder",
                  supTitle: "123 reviews = s. Oxford 13th",
                  image:
                      'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2R8ZW58MHx8MHx8fDA%3D',
                  rate: 4.5,
                ),
                BodyItems(
                  title: "Mama's brunch",
                  supTitle: "89 reviews = s. Gulier 6th",
                  image:
                      'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
                  rate: 3.2,
                ),
                BodyItems(
                  title: "Joe's Linder",
                  supTitle: "123 reviews = s.Oxford 13th",
                  image:
                      'https://plus.unsplash.com/premium_photo-1663852705829-aa8707495e2e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2R8ZW58MHx8MHx8fDA%3D',
                  rate: 5.3,
                ),
                BodyItems(
                  title: "title",
                  supTitle: "123 reviews = s.Oxford 13th",
                  image:
                      'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D',
                  rate: 5.3,
                ),
                BodyItems(
                  title: "title",
                  supTitle: "123 reviews = s.Oxford 13th",
                  image:
                      'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
                  rate: 5.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
