import 'package:flutter/material.dart';
import 'package:food/componats/item_details.dart';

import '../componats/user_avatar.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  const DetailsPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const Chip(
        padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
        backgroundColor: Colors.orange,
        label: Text(
          "Book Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: image,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/$image"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 40,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const UserAvatar(leftPosition: 110.0, image: 'img5.jpg'),
          const UserAvatar(leftPosition: 90.0, image: 'img3.jpg'),
          const UserAvatar(leftPosition: 70.0, image: 'img2.jpg'),
          const UserAvatar(leftPosition: 50.0, image: 'img1.jpg'),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 25,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "4.5",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 25,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                        )
                      ],
                    ),
                    child: const Text(
                      "176 reviews, 10 friends",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Sys Brunch",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const <Widget>[
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image: 'img1.jpg',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image: 'img2.jpg',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image: 'img3.jpg',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image: 'img4.jpg',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
