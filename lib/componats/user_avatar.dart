import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double leftPosition;
  final String image;
  const UserAvatar(
      {super.key, required this.leftPosition, required this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.4,
      left: leftPosition,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/$image"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.white),
        ),
      ),
    );
  }
}
