import 'package:flutter/material.dart';

class ProfileCircleTile extends StatelessWidget {
  final String imagePath;
  const ProfileCircleTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(140),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
