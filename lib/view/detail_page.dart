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
                  image: NetworkImage(image),
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
          const UserAvatar(
              leftPosition: 110.0,
              image:
                  'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D'),
          const UserAvatar(
              leftPosition: 90.0,
              image:
                  'https://plus.unsplash.com/premium_photo-1663852705829-aa8707495e2e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2R8ZW58MHx8MHx8fDA%3D'),
          const UserAvatar(
              leftPosition: 70.0,
              image:
                  'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2R8ZW58MHx8MHx8fDA%3D'),
          const UserAvatar(
              leftPosition: 50.0,
              image:
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
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
                    image:
                        'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image:
                        'https://plus.unsplash.com/premium_photo-1663852705829-aa8707495e2e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2R8ZW58MHx8MHx8fDA%3D',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image:
                        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
                  ),
                  ItemsDetails(
                    title: 'Vegetables',
                    supTitle:
                        'you should consume 2 1/2 cups vegetables per day according',
                    image:
                        'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2R8ZW58MHx8MHx8fDA%3D',
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
