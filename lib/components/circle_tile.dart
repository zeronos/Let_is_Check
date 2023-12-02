import 'package:flutter/material.dart';

class CircleTile extends StatelessWidget {
  final String imagePath;
  const CircleTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(140),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: CircleAvatar(radius: 30, backgroundImage: AssetImage(imagePath)),
    );
  }
}
