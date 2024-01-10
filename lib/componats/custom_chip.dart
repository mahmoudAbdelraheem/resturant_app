import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String lable;
  final bool isActive;
  const CustomChip({
    super.key,
    required this.lable,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Chip(
          padding: const EdgeInsets.all(8),
          label: Text(
            lable,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          backgroundColor: isActive ? Colors.orange : Colors.grey,
        ),
      ),
    );
  }
}
