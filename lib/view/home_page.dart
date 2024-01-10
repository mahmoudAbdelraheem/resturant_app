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
                      backgroundImage: AssetImage('images/avatar1.jpg'),
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
                  image: 'img1.jpg',
                  rate: 4.5,
                ),
                BodyItems(
                  title: "Mama's brunch",
                  supTitle: "89 reviews = s. Gulier 6th",
                  image: 'img2.jpg',
                  rate: 3.2,
                ),
                BodyItems(
                  title: "Joe's Linder",
                  supTitle: "123 reviews = s.Oxford 13th",
                  image: 'img3.jpg',
                  rate: 5.3,
                ),
                BodyItems(
                  title: "title",
                  supTitle: "123 reviews = s.Oxford 13th",
                  image: 'img4.jpg',
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
